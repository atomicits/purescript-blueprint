module Blueprint.Component.Table.Interactions where

import Prelude

import React

import Blueprint.Component.Menu
import Blueprint.Component.Table.Regions
import Blueprint.ComponentClass
import Blueprint.Type

-- IDraggableProps

type ClientCoordinates = Array Number

type CoordinateData =
  { activation :: ClientCoordinates
  , current :: ClientCoordinates
  , delta :: ClientCoordinates
  , last :: ClientCoordinates
  , offset :: ClientCoordinates
  }

type DragHandler =
  { onActivate :: String --- (event: MouseEvent) => boolean
  , onDragMove :: String -- (event: MouseEvent, coords: CoordinateData) => void
  , onDragEnd  :: String -- (event: MouseEvent, coords: CoordinateData) => void
  , onClick    :: String -- (event: MouseEvent) => void
  , onDoubleClick   :: String -- (event: MouseEvent) => void
  , preventDefault  :: Boolean
  , stopPropagation :: Boolean
  }

type DraggableProps = DraggablePropsEx ()

type DraggablePropsEx r = PropsEx
  ( dragHandler :: DragHandler |r )

--- IResizeHandleProps

type LockableLayout = { onLayoutLock :: Boolean -> Unit } -- (isLayoutLocked?: boolean) => void

newtype Orientation = Orientation Int

horizondal :: Orientation
horizondal = Orientation 1

vertical :: Orientation
vertical = Orientation 0

type ResizeHandleProps = ResizeHandlePropsEx ()

type ResizeHandlePropsEx r = PropsEx
  ( onResizeMove :: Number -> Number -> Unit  --(offset: number, delta: number) => void
  , onResizeEnd :: Number -> Unit  --  (offset: number) => void;
  , onDoubleClick :: Unit   --  () => void;
  , orientation :: Orientation
  , isDragging :: Boolean
  , lockableLayout :: LockableLayout
  |r
  )

--- IResizableProps

type IndexedResizeCallback = {} -- (index: number, size: number) => void; }

type ResizableProps = PropsEx
  ( isResizable :: Boolean
  , maxSize :: Number
  , minSize :: Number
  , onSizeChanged :: Number -> Unit  --(size: number) => void;
  , onResizeEnd :: Number -> Unit -- (size: number) => void;
  , onDoubleClick :: Unit  --  () => void;
  , orientation :: Orientation
  , size :: Number
  , unclampedSize :: Number
  , lockableLayout :: LockableLayout
  )

---- IDragSelectableProps

type SelectedRegionTransform = {} --  (region: IRegion, event: MouseEvent, coords?: ICoordinateData) => IRegion;

type SelectableProps =
  { allowMultipleSelection :: Boolean
  , onSelection :: Region -> Unit -- (regions: IRegion[]) => void;
  , selectedRegions :: Region
  , selectedRegionTransform :: SelectedRegionTransform
  }

type DragSelectableProps =
  ( locateClick :: String   -- (event: MouseEvent) => IRegion;
  , locateDrag :: String   ---  (event: MouseEvent, coords: ICoordinateData) => IRegion;
  , selectableProps :: SelectableProps
  )

----  IMenuContext

type ContextMenuRenderer = {} --(context: IMenuContext) => JSX.Element;

type MenuContext =
  { getRegions :: Unit -> Region  -- () => IRegion[];
  , getSelectedRegions :: Unit -> Region  -- () => IRegion[];
  , getTarget :: Unit -> Region  ---  () => IRegion;
  , getUniqueCells :: Unit -> CoordinateData  -- () => ICellCoordinate[];
  }

---- ICopyCellsMenuItemProps

type CopyCellsMenuItemProps eff = MenuItemPropsEx eff
  ( context :: MenuContext
  , getCellData :: String   -- (row: number, col: number) => any;
  , onCopy :: Boolean -> Unit  ---  (success: boolean) => void;
  )
