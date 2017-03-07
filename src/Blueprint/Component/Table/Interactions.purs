module Blueprint.Component.Table.Interactions where

import Blueprint.Component.TableClass
import Blueprint.Component.Menu (MenuItemPropsEx)
import Blueprint.Component.Table.Regions (Region)
import Blueprint.Event (EventHandler, EventHandler2, UnitEventHandler, MouseEvent)
import Blueprint.Type (Prop, PropsEx)
import Control.Monad.Eff (Eff)
import Prelude (Unit)
import React (ReactElement, createElement)

-- IDraggableProps

type ClientCoordinates = Array Number

type CoordinateData =
  { activation :: ClientCoordinates
  , current :: ClientCoordinates
  , delta :: ClientCoordinates
  , last :: ClientCoordinates
  , offset :: ClientCoordinates
  }

type DragHandler eff = DragHandlerEx eff ()

type DragHandlerEx eff r =
  ( onActivate :: MouseEvent eff -> Boolean
  , onDragMove :: MouseEvent eff -> CoordinateData -> Unit
  , onDragEnd  :: MouseEvent eff -> CoordinateData -> Unit
  , onClick    :: MouseEvent eff -> Unit
  , onDoubleClick   :: MouseEvent eff -> Unit
  , preventDefault  :: Boolean
  , stopPropagation :: Boolean
  | r
  )

type DraggableProps eff  = DragHandlerEx eff
  ( className :: String )

--- IResizeHandleProps

type LockableLayout eff = { isLayoutLocked ::  EventHandler eff Unit }

newtype Orientation = Orientation Int

horizondal :: Orientation
horizondal = Orientation 1

vertical :: Orientation
vertical = Orientation 0

type ResizeHandleProps eff = ResizeHandlePropsEx eff ()

type ResizeHandlePropsEx eff r = PropsEx
  ( onResizeMove :: EventHandler2 eff (Number -> Number) Unit
  , onResizeEnd :: EventHandler eff Unit
  , onDoubleClick :: UnitEventHandler eff
  , orientation :: Orientation
  , isDragging :: Boolean
  , lockableLayout :: LockableLayout eff
  |r
  )

-- --- IResizableProps

type IndexedResizeCallback eff = { delete :: Number -> Number -> Eff eff Unit } -- (index: number, size: number) => void; }

---- IDragSelectableProps

type SelectedRegionTransform eff = { delete :: Region -> MouseEvent eff -> CoordinateData -> Region } --  (region: IRegion, event: MouseEvent, coords?: ICoordinateData) => IRegion;

type SelectableProps eff  =
  { allowMultipleSelection :: Boolean
  , onSelection :: Array Region -> Eff eff Unit
  , selectedRegions :: Region
  , selectedRegionTransform :: SelectedRegionTransform eff
  }

type DragSelectableProps eff =
  ( locateClick :: (MouseEvent eff) -> Region
  , locateDrag :: (MouseEvent eff) -> CoordinateData -> Region
  , selectableProps :: SelectableProps eff
  )

----  IMenuContext

type ContextMenuRenderer = { delete :: MenuContext -> ReactElement } --(context: IMenuContext) => JSX.Element;

type MenuContext =
  { getRegions :: Unit -> Array Region
  , getSelectedRegions :: Unit -> Array Region
  , getTarget :: Unit -> Region
  , getUniqueCells :: Unit -> Array CoordinateData
  }

---- ICopyCellsMenuItemProps

type CopyCellsMenuItemProps a eff = MenuItemPropsEx eff
  ( context :: MenuContext
  , getCellData :: Number -> Number -> a
  , onCopy :: EventHandler eff Unit
  )


draggable :: forall t1. t1 -> Array ReactElement -> ReactElement
draggable = createElement draggableClass

copyCellsMenuItem :: forall a eff. Prop (CopyCellsMenuItemProps a eff) -> Array ReactElement -> ReactElement
copyCellsMenuItem = createElement copyCellsMenuItemClass

dragSelectable :: forall t3. t3 -> Array ReactElement -> ReactElement
dragSelectable = createElement dragSelectableClass

resizeHandle :: forall eff. Prop (ResizeHandleProps eff) -> Array ReactElement -> ReactElement
resizeHandle = createElement resizeHandleClass

orientation :: Prop Orientation -> Array ReactElement -> ReactElement
orientation = createElement orientationClass
