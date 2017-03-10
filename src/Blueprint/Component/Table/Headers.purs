module Blueprint.Component.Table.Headers where

import Prelude (Unit)

import React (ReactElement, createElement)

import Blueprint.Component.TableClass
import Blueprint.Event (EventHandler)
import Blueprint.Type (Intent, Prop, PropsEx, UnknownReactType, UnknownStyleType)

---- ColumnHeaderCellProps

type ColumnNameProps =
  { name :: String
  , renderName :: String -> ReactElement
  , useInteractionBar :: Boolean
  }

type ColumnHeaderCellProps = ColumnHeaderCellPropsEx ()

type ColumnHeaderCellPropsEx r  = PropsEx
  ( isActive :: Boolean
  , isColumnSelected :: Boolean
  , loading :: Boolean
  , menu :: ReactElement
  , menuIconName :: String
  , style :: UnknownStyleType
  , resizeHandle :: UnknownReactType  -- ResizeHandle; -- need to discuss
  , columnNameProps :: ColumnNameProps
  |r
  )

type ColumnHeaderRenderer = {}

---- IColumnHeaderProps

type ColumnWidths  =
  { minColumnWidth :: Number
  , maxColumnWidth :: Number
  , defaultColumnWidth :: Number
  }

--- IEditableNameProps

type EditableNameProps eff = PropsEx
  ( name :: String
  , onCancel :: EventHandler eff Unit
  , onChange :: EventHandler eff Unit
  , onConfirm :: EventHandler eff Unit
  , intent :: Intent
  )

--- IRowHeaderCellProps

type RowHeaderCellProps = RowHeaderCellPropsEx ()

type RowHeaderCellPropsEx r = PropsEx
  ( isActive :: Boolean
  , isRowSelected :: Boolean
  , name :: String
  , loading :: Boolean
  , menu :: ReactElement
  , resizeHandle :: UnknownReactType  --  ResizeHandle;
  , style :: UnknownStyleType
  |r
  )


---- IRowHeaderProps

type RowHeaderRenderer = {}

type RowHeights =
  { minRowHeight :: Number
  , maxRowHeight :: Number
  , defaultRowHeight :: Number
  }

----

type HorizontalCellDivider = {}

columnHeaderCell :: Prop ColumnHeaderCellProps -> Array ReactElement -> ReactElement
columnHeaderCell = createElement columnHeaderCellClass


editableName :: forall eff. Prop (EditableNameProps eff) -> Array ReactElement -> ReactElement
editableName = createElement editableNameClass

rowHeaderCell :: Prop RowHeaderCellProps -> Array ReactElement -> ReactElement
rowHeaderCell = createElement rowHeaderCellClass
