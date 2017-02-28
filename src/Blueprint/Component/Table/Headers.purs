module Blueprint.Component.Table.Headers where

import Prelude
import React
import Blueprint.Component.Table.Common
import Blueprint.Component.Table.Locator
import Blueprint.ComponentClass
import Blueprint.Type
import Blueprint.Component.Table.Interactions
import Control.Monad.Eff (Eff)



---- ColumnHeaderCellProps

type ColumnNameProps =
  { name :: String
  , renderName :: String  -- (name: string) => React.ReactElement<IProps>;
  , useInteractionBar :: Boolean
  }

type ColumnHeaderCellProps = ColumnHeaderCellPropsEx ()

type ColumnHeaderCellPropsEx r  = PropsEx
  ( isActive :: Boolean
  , isColumnSelected :: Boolean
  , loading :: Boolean
  , menu :: String -- JSX.Element;
  , menuIconName :: String
  , style :: String -- React.CSSProperties;
  , resizeHandle :: String -- ResizeHandle; -- need to discuss
  , isActive :: Boolean
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

type ColumnHeaderProps = ColumnHeaderPropsEx ()

type ColumnHeaderPropsEx r =
  ( cellRenderer :: ColumnHeaderRenderer
  , grid :: String --Grid
  , loading :: Boolean
  , locator :: Locator
  , columnWidths :: ColumnWidths
  , columnIndices :: ColumnIndices
  , viewportRect :: String -- Rect
  , isResizable :: Boolean
  , selectableProps :: SelectableProps
  , columnIndices :: ColumnIndices
  , lockableLayout :: LockableLayout
  , onColumnWidthChanged :: IndexedResizeCallback
  , onResizeGuide :: Number -> Unit  -- guides: number[]) => void;
  | r
  )

--- IEditableNameProps

type EditableNameProps = PropsEx
  ( name :: String
  , onCancel :: String -> Unit --(value: string) => void;
  , onChange :: String -> Unit -- (value: string) => void;
  , onConfirm :: String -> Unit -- (value: string) => void;
  , intent :: Intent
  )

--- IRowHeaderCellProps

type RowHeaderCellProps = RowHeaderCellPropsEx ()

type RowHeaderCellPropsEx r = PropsEx
  ( isActive :: Boolean
  , isRowSelected :: Boolean
  ,  name :: String
  , loading :: Boolean
  , menu :: String -- JSX.Element;
  , resizeHandle :: String --  ResizeHandle;
  , style :: String --  React.CSSProperties;
  , isActive :: Boolean
  |r
  )


---- IRowHeaderProps

type RowHeaderRenderer = {}

type RowHeights =
  { minRowHeight :: Number
  , maxRowHeight :: Number
  , defaultRowHeight :: Number
  }

type RowHeaderProps eff =
  ( isResizable :: Boolean
  , grid :: String --Grid
  , loading :: Boolean
  , locator :: Locator
  , onResizeGuide :: Array Number -> Eff eff Unit --- (guides: number[]) => void;
  , onRowHeightChanged :: IndexedResizeCallback
  , renderRowHeader :: RowHeaderRenderer
  , viewportRect :: String -- Rect;
  , rowHeights :: RowHeights
  , rowIndices :: RowIndices
  , selectableProps :: SelectableProps
  , rowIndices :: RowIndices
  , lockableLayout :: LockableLayout
  )
