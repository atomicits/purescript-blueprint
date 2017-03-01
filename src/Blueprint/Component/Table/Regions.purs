module Blueprint.Component.Table.Regions where

import React (ReactElement, createElement)

import Blueprint.Component.TableClass (columnLoadingOptionClass, regionCardinalityClass, regionsClass
  , rowLoadingOptionClass, selectionModesClass, tableLoadingOptionClass)
import Blueprint.Type (Prop)

--- RegionCardinality

newtype RegionCardinality = RegionCardinality Int

cells :: RegionCardinality
cells = RegionCardinality 0

fullRows :: RegionCardinality
fullRows = RegionCardinality 1

fullColumns :: RegionCardinality
fullColumns = RegionCardinality 2

fullTables :: RegionCardinality
fullTables  = RegionCardinality 3

-- IRegion

type CellInterval = Array Number

type CellCoordinate = Array Number

type Region =
  { rows :: CellInterval
  , cols :: CellInterval
  }

--- IStyledRegionGroup

type StyledRegionGroup =
  { className :: String
  , regions :: Region
  }

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

newtype ColumnLoadingOptions = ColumnLoadingOption String

columnLoadingOptions ::
  { cells :: ColumnLoadingOptions
  , header :: ColumnLoadingOptions
  }
columnLoadingOptions =
  { cells : ColumnLoadingOption "cells"
  , header : ColumnLoadingOption "column-header"
  }

newtype RowLoadingOptions = RowLoadingOption String

rowLoadingOptions ::
  { cells :: RowLoadingOptions
  , header :: RowLoadingOptions
  }
rowLoadingOptions =
  { cells : RowLoadingOption "cells"
  , header : RowLoadingOption "row-header"
  }

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


regions :: Prop Region -> Array ReactElement -> ReactElement
regions = createElement regionsClass

selectionModes :: Prop SelectionModes -> Array ReactElement -> ReactElement
selectionModes = createElement selectionModesClass


regionCardinality :: Prop RegionCardinality -> Array ReactElement -> ReactElement
regionCardinality = createElement regionCardinalityClass

columnLoadingOption :: Prop ColumnLoadingOptions -> Array ReactElement -> ReactElement
columnLoadingOption = createElement columnLoadingOptionClass

rowLoadingOption :: Prop RowLoadingOptions -> Array ReactElement -> ReactElement
rowLoadingOption = createElement rowLoadingOptionClass

tableLoadingOptions :: Prop TableLoadingOption -> Array ReactElement -> ReactElement
tableLoadingOptions = createElement tableLoadingOptionClass
