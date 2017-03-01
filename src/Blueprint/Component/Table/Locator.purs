module Blueprint.Component.Table.Locator where

type Locator =
  { getWidestVisibleCellInColumn :: Number -> Number
  , convertPointToColumn :: Number -> Number
  , convertPointToRow :: Number -> Number
  , convertPointToCell :: String  -- (clientX: number, clientY: number) => {col: number, row: number};
  }
