module Blueprint.Component.Table.Table where

import Prelude

import React

import Blueprint.Component.Table.Headers
import Blueprint.Component.Table.Interactions
import Blueprint.Component.Table.Locator
import Blueprint.Component.Table.Regions
import Blueprint.ComponentClass
import Blueprint.Type

type TableProps = TablePropsEx ()

type TablePropsEx r = PropsEx
  ( allowMultipleSelection :: Boolean
  , children :: String  -- React.ReactElement<IColumnProps>;
  , fillBodyWithGhostCells :: Boolean
  , getCellClipboardData :: String  -- (row: number, col: number) => any;
  , isColumnResizable :: Boolean
  , loadingOptions ::  TableLoadingOption
  , onColumnWidthChanged :: IndexedResizeCallback
  , columnWidths :: Array Number
  , isRowResizable :: Boolean
  , onRowHeightChanged :: IndexedResizeCallback
  , rowHeights :: Array Number
  , isRowHeaderShown :: Boolean
  , onSelection :: Region -> Unit  -- (selectedRegions: IRegion[]) => void;
  , onCopy :: Boolean -> Unit     -- (success: boolean) => void;
  , renderRowHeader :: RowHeaderRenderer
  , renderBodyContextMenu :: ContextMenuRenderer
  , numRows :: Number
  , selectedRegions :: Region
  , selectedRegionTransform :: SelectedRegionTransform
  , selectionModes :: RegionCardinality
  , styledRegionGroups :: StyledRegionGroup
  , columnWidths :: Array Number
  , locator ::  Locator
  , isLayoutLocked :: Boolean
  , viewportRect :: String -- Rect;
  , verticalGuides ::  Array Number
  , horizontalGuides :: Array Number
  , rowHeights:: Array Number
  , selectedRegions :: Region
  |r
  )
