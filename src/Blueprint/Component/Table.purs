module Blueprint.Component.Table
  ( TableProps
  , TablePropsEx
  , table
  , CellProps
  , CellPropsEx
  , cell
  , EditableCellProps
  , EditableCellPropsEx
  , editableCell
  , TruncatedFormatProps
  , TruncatedFormatPropsEx
  , truncatedFormat
  , TruncatedPopoverMode
  , truncatedPopoverMode
  , JSONFormatProps
  , jSONFormate
  , ColumnProps
  , column
  , DraggableProps
  , draggable
  , CopyCellsMenuItemProps
  , copyCellsMenuItem
  , Orientation
  , orientation
  , ResizeHandleProps
  , ResizeHandlePropsEx
  , resizeHandle
  , DragSelectableProps
  , dragSelectable
  , ColumnHeaderCellProps
  , ColumnHeaderCellPropsEx
  , columnHeaderCell
  , RowHeaderCellProps
  , RowHeaderCellPropsEx
  , rowHeaderCell
  , EditableNameProps
  , editableName
  , Region
  , regions
  , SelectionModes
  , selectionModes
  , RegionCardinality
  , regionCardinality
  , ColumnLoadingOptions
  , columnLoadingOption
  , RowLoadingOptions
  , rowLoadingOption
  , TableLoadingOption
  , tableLoadingOptions
  , horizontalCellDivider
  , module T
  ) where

import Prelude
import Blueprint.Component.Menu (MenuItemPropsEx) as T
import Blueprint.Component.Table.Cell (CellRenderer) as T
import Blueprint.Component.Table.Column (NumberOrString) as T
import Blueprint.Component.Table.Headers (ColumnHeaderRenderer, ColumnNameProps, RowHeaderRenderer) as T
import Blueprint.Component.Table.Interactions (ContextMenuRenderer, CoordinateData, DragHandlerEx, IndexedResizeCallback, LockableLayout, MenuContext, SelectableProps, SelectedRegionTransform) as T
import Blueprint.Component.Table.Locator (Locator) as T
import Blueprint.Component.Table.Regions (CellInterval, StyledRegionGroup) as T
import Blueprint.Component.TableClass (cellClass, columnClass, columnHeaderCellClass, columnLoadingOptionClass, copyCellsMenuItemClass, dragSelectableClass, draggableClass, editableCellClass, editableNameClass, horizontalCellDividerClass, jSONFormatClass, orientationClass, regionCardinalityClass, regionsClass, resizeHandleClass, rowHeaderCellClass, rowLoadingOptionClass, selectionModesClass, tableClass, tableLoadingOptionClass, truncatedFormatClass, truncatedPopoverModeClass)
import Blueprint.Event (EventHandler, EventHandler2, MouseEvent, UnitEventHandler)
import Blueprint.Type (Intent, Prop, PropsEx, UnknownJSXElementType, UnknownReactType, UnknownStyleType)
import React (ReactElement, createElement)

type TableProps eff a  = TablePropsEx eff a  ()

type TablePropsEx eff a r = PropsEx
  ( allowMultipleSelection :: Boolean
  , children :: ReactElement
  , fillBodyWithGhostCells :: Boolean
  , getCellClipboardData :: Number -> Number -> a
  , isColumnResizable :: Boolean
  , loadingOptions :: TableLoadingOption
  , onColumnWidthChanged :: T.IndexedResizeCallback
  , columnWidths :: Array Number
  , isRowResizable :: Boolean
  , onRowHeightChanged :: T.IndexedResizeCallback
  , isRowHeaderShown :: Boolean
  , onSelection :: EventHandler eff Unit
  , onCopy :: EventHandler eff  Unit
  , renderRowHeader ::T.RowHeaderRenderer
  , renderBodyContextMenu :: T.ContextMenuRenderer
  , numRows :: Number
  , selectedRegionTransform :: T.SelectedRegionTransform
  , selectionModes :: RegionCardinality
  , styledRegionGroups :: T.StyledRegionGroup
  , locator :: T.Locator
  , isLayoutLocked :: Boolean
  , viewportRect :: UnknownReactType  -- Rect;
  , verticalGuides ::  Array Number
  , horizontalGuides :: Array Number
  , rowHeights:: Array Number
  , selectedRegions :: Region
  |r
  )


table :: forall eff a. Prop (TableProps eff a) -> Array ReactElement -> ReactElement
table = createElement tableClass

----

type CellProps = CellPropsEx ()

type CellPropsEx r = PropsEx
  ( key :: String
  , style :: UnknownStyleType
  , interactive :: Boolean
  , loading :: Boolean
  , tooltip :: String
  , truncated :: Boolean
  , intent :: Intent
  |r
  )


cell :: Prop CellProps -> Array ReactElement -> ReactElement
cell = createElement cellClass

----

type EditableCellProps eff   = EditableCellPropsEx eff ()

type EditableCellPropsEx eff r = CellPropsEx
  ( value :: String
  , onCancel :: EventHandler eff Unit
  , onChange :: EventHandler eff Unit
  , onConfirm :: EventHandler eff Unit
  , isEditing :: Boolean
  |r
  )

editableCell :: forall eff. Prop (EditableCellProps eff) -> Array ReactElement -> ReactElement
editableCell = createElement editableCellClass

----

type TruncatedFormatProps = TruncatedFormatPropsEx ()

type TruncatedFormatPropsEx r = PropsEx
  ( children :: String
  , detectTruncation :: Boolean
  , preformatted :: Boolean
  , showPopover :: TruncatedPopoverMode
  , truncateLength :: Number
  , truncationSuffix :: String
  , isTruncated :: Boolean
  |r
  )


truncatedFormat :: Prop TruncatedFormatProps -> Array ReactElement -> ReactElement
truncatedFormat = createElement truncatedFormatClass

----

type JSONFormatProps a = TruncatedFormatPropsEx
  ( omitQuotesOnStrings :: Boolean
  , stringify :: a -> String
  )


jSONFormate :: forall a. Prop (JSONFormatProps a) -> Array ReactElement -> ReactElement
jSONFormate = createElement jSONFormatClass

----

newtype TruncatedPopoverMode = TruncatedPopoverMode Int

always :: TruncatedPopoverMode
always = TruncatedPopoverMode 0

never :: TruncatedPopoverMode
never = TruncatedPopoverMode 1

whenTruncated :: TruncatedPopoverMode
whenTruncated = TruncatedPopoverMode 2


truncatedPopoverMode :: Prop TruncatedPopoverMode -> Array ReactElement -> ReactElement
truncatedPopoverMode = createElement truncatedPopoverModeClass

----

type ColumnProps = PropsEx
  ( id :: T.NumberOrString
  , loadingOptions :: Array ColumnLoadingOptions
  , renderCell :: T.CellRenderer
  , renderColumnHeader :: T.ColumnHeaderRenderer
  , columnNameProps :: T.ColumnNameProps
  )

column :: Prop ColumnProps -> Array ReactElement -> ReactElement
column = createElement columnClass

----

type DraggableProps eff  = T.DragHandlerEx eff
  ( className :: String )


draggable :: forall t1. t1 -> Array ReactElement -> ReactElement
draggable = createElement draggableClass

----

type CopyCellsMenuItemProps a eff = T.MenuItemPropsEx eff
  ( context :: T.MenuContext
  , getCellData :: Number -> Number -> a
  , onCopy :: EventHandler eff Unit
  )


copyCellsMenuItem :: forall a eff. Prop (CopyCellsMenuItemProps a eff) -> Array ReactElement -> ReactElement
copyCellsMenuItem = createElement copyCellsMenuItemClass

----

newtype Orientation = Orientation Int

horizondal :: Orientation
horizondal = Orientation 1

vertical :: Orientation
vertical = Orientation 0


orientation :: Prop Orientation -> Array ReactElement -> ReactElement
orientation = createElement orientationClass

----

type ResizeHandleProps eff = ResizeHandlePropsEx eff ()

type ResizeHandlePropsEx eff r = PropsEx
  ( onResizeMove :: EventHandler2 eff (Number -> Number) Unit
  , onResizeEnd :: EventHandler eff Unit
  , onDoubleClick :: UnitEventHandler eff
  , orientation :: Orientation
  , isDragging :: Boolean
  , lockableLayout :: T.LockableLayout eff
  |r
  )

resizeHandle :: forall eff. Prop (ResizeHandleProps eff) -> Array ReactElement -> ReactElement
resizeHandle = createElement resizeHandleClass

----

type DragSelectableProps eff =
  ( locateClick :: (MouseEvent eff) -> Region
  , locateDrag :: (MouseEvent eff) -> T.CoordinateData -> Region
  , selectableProps :: T.SelectableProps eff
  )

dragSelectable :: forall t3. t3 -> Array ReactElement -> ReactElement
dragSelectable = createElement dragSelectableClass

----

type ColumnHeaderCellProps = ColumnHeaderCellPropsEx ()

type ColumnHeaderCellPropsEx r  = PropsEx
  ( isActive :: Boolean
  , isColumnSelected :: Boolean
  , loading :: Boolean
  , menu :: UnknownJSXElementType
  , menuIconName :: String
  , style :: UnknownStyleType
  , resizeHandle :: UnknownReactType  -- ResizeHandle; -- need to discuss
  , columnNameProps :: T.ColumnNameProps
  |r
  )

columnHeaderCell :: Prop ColumnHeaderCellProps -> Array ReactElement -> ReactElement
columnHeaderCell = createElement columnHeaderCellClass

----

type RowHeaderCellProps = RowHeaderCellPropsEx ()

type RowHeaderCellPropsEx r = PropsEx
  ( isActive :: Boolean
  , isRowSelected :: Boolean
  , name :: String
  , loading :: Boolean
  , menu :: UnknownJSXElementType
  , resizeHandle :: UnknownReactType  --  ResizeHandle;
  , style :: UnknownStyleType
  |r
  )


rowHeaderCell :: Prop RowHeaderCellProps -> Array ReactElement -> ReactElement
rowHeaderCell = createElement rowHeaderCellClass

----

type EditableNameProps eff = PropsEx
  ( name :: String
  , onCancel :: EventHandler eff Unit
  , onChange :: EventHandler eff Unit
  , onConfirm :: EventHandler eff Unit
  , intent :: Intent
  )


editableName :: forall eff. Prop (EditableNameProps eff) -> Array ReactElement -> ReactElement
editableName = createElement editableNameClass

----

type Region =
  { rows :: T.CellInterval
  , cols :: T.CellInterval
  }


regions :: Prop Region -> Array ReactElement -> ReactElement
regions = createElement regionsClass

----

type SelectionModes = Array RegionCardinality

smAll :: SelectionModes
smAll = [fullColumns, fullRows, cells ]

smColumnsAndCells :: Array  RegionCardinality
smColumnsAndCells = [fullColumns, cells ]

smColumnsOnly :: Array  RegionCardinality
smColumnsOnly = [fullColumns]

smNone :: Array  RegionCardinality
smNone = []

smRowsAndCells :: Array  RegionCardinality
smRowsAndCells = [fullRows, cells]

smRowsOnly :: Array  RegionCardinality
smRowsOnly = [fullRows]


selectionModes :: Prop SelectionModes -> Array ReactElement -> ReactElement
selectionModes = createElement selectionModesClass

----

newtype RegionCardinality = RegionCardinality Int

cells :: RegionCardinality
cells = RegionCardinality 0

fullRows :: RegionCardinality
fullRows = RegionCardinality 1

fullColumns :: RegionCardinality
fullColumns = RegionCardinality 2

fullTables :: RegionCardinality
fullTables  = RegionCardinality 3


regionCardinality :: Prop RegionCardinality -> Array ReactElement -> ReactElement
regionCardinality = createElement regionCardinalityClass

----

newtype ColumnLoadingOptions = ColumnLoadingOption String

columnLoadingOptions ::
  { cells :: ColumnLoadingOptions
  , header :: ColumnLoadingOptions
  }
columnLoadingOptions =
  { cells : ColumnLoadingOption "cells"
  , header : ColumnLoadingOption "column-header"
  }


columnLoadingOption :: Prop ColumnLoadingOptions -> Array ReactElement -> ReactElement
columnLoadingOption = createElement columnLoadingOptionClass

----

newtype RowLoadingOptions = RowLoadingOption String

rowLoadingOptions ::
  { cells :: RowLoadingOptions
  , header :: RowLoadingOptions
  }
rowLoadingOptions =
  { cells : RowLoadingOption "cells"
  , header : RowLoadingOption "row-header"
  }


rowLoadingOption :: Prop RowLoadingOptions -> Array ReactElement -> ReactElement
rowLoadingOption = createElement rowLoadingOptionClass

----

data TableLoadingOption = TableLoadingOption String

cellsC :: ColumnLoadingOptions
cellsC = ColumnLoadingOption "cells"

tableLoadingOption ::
  { cells :: TableLoadingOption
  , column_headers :: TableLoadingOption
  , row_headers :: TableLoadingOption
  }
tableLoadingOption =
  { cells : TableLoadingOption "cells"
  , column_headers : TableLoadingOption "column-header"
  , row_headers : TableLoadingOption "row-header"
  }


tableLoadingOptions :: Prop TableLoadingOption -> Array ReactElement -> ReactElement
tableLoadingOptions = createElement tableLoadingOptionClass


horizontalCellDivider :: ReactElement
horizontalCellDivider = horizontalCellDividerClass
----
