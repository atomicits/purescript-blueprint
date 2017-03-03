module Blueprint.Component.Table.Regions where

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
