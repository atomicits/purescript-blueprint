module Blueprint.Component.Table.TableType where

import React
import Control.Monad.Eff

import Blueprint.Event
import Blueprint.Type


type TableProps eff any =
  { className :: String
  , allowMultipleSelection :: Boolean
  , children :: Array ReactElement
  , fillBodyWithGhostCells :: Boolean
  , getCellClipboardData :: Int -> Int -> Eff eff any
  , isColumnResizable :: Boolean
  , loadingOptions :: Array TableLoadingOption
  , onColumnWidthChanged :: IndexedResizeCallback
  , columnWidths :: Int
  , isRowResizable :: Boolean
  , onRowHeightChanged :: IIndexedResizeCallback
  , rowHeights :: Int
  , isRowHeaderShown :: Boolean
  , onSelection :: EventHandler eff Region
  , onCopy :: EventHandler eff Boolean
  , renderRowHeader :: RowHeaderRenderer
  , renderBodyContextMenu :: ContextMenuRenderer
  , numRows :: Int
  , selectedRegions :: Region
  , selectedRegionTransform :: SelectedRegionTransform
  , selectionModes :: RegionCardinality
  , styledRegionGroups :: StyledRegionGroup
  }
