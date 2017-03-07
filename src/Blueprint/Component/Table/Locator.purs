module Blueprint.Component.Table.Locator where


type Cell = {col:: Number, row:: Number}

type Locator =
  { getWidestVisibleCellInColumn :: Number -> Number
  , convertPointToColumn :: Number -> Number
  , convertPointToRow :: Number -> Number
  , convertPointToCell :: Number -> Number -> Cell
  }
