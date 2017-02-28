module Blueprint.Component.Table.Table where

import Blueprint.Component.TableClass
import Blueprint.Component.Table.Headers (RowHeaderRenderer)
import Blueprint.Component.Table.Interactions (ContextMenuRenderer, IndexedResizeCallback, SelectedRegionTransform)
import Blueprint.Component.Table.Locator (Locator)
import Blueprint.Component.Table.Regions (Region, RegionCardinality, StyledRegionGroup, TableLoadingOption)
import Blueprint.Event (EventHandler)
import Blueprint.Type (PropsEx, Prop)
import Prelude (Unit)
import React (ReactElement, createElement)

type TableProps eff a  = TablePropsEx eff a  ()

type TablePropsEx eff a r = PropsEx
  ( allowMultipleSelection :: Boolean
  , children :: ReactElement
  , fillBodyWithGhostCells :: Boolean
  , getCellClipboardData ::  Number -> Number -> a
  , isColumnResizable :: Boolean
  , loadingOptions ::  TableLoadingOption
  , onColumnWidthChanged :: IndexedResizeCallback
  , columnWidths :: Array Number
  , isRowResizable :: Boolean
  , onRowHeightChanged :: IndexedResizeCallback
  , isRowHeaderShown :: Boolean
  , onSelection :: EventHandler eff Unit
  , onCopy :: EventHandler eff  Unit
  , renderRowHeader :: RowHeaderRenderer
  , renderBodyContextMenu :: ContextMenuRenderer
  , numRows :: Number
  , selectedRegionTransform :: SelectedRegionTransform
  , selectionModes :: RegionCardinality
  , styledRegionGroups :: StyledRegionGroup
  , locator ::  Locator
  , isLayoutLocked :: Boolean
  , viewportRect :: String -- Rect;
  , verticalGuides ::  Array Number
  , horizontalGuides :: Array Number
  , rowHeights:: Array Number
  , selectedRegions :: Region
  |r
  )

table :: forall eff a.  Prop (TableProps eff a) -> Array ReactElement -> ReactElement
table = createElement tableClass
