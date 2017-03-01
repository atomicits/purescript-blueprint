module Blueprint.Component.Table.Locator where

import Blueprint.Type

type Locator =
  { getWidestVisibleCellInColumn :: Number -> Number
  , convertPointToColumn :: Number -> Number
  , convertPointToRow :: Number -> Number
  , convertPointToCell :: UnknownFunctionType  -- (clientX: number, clientY: number) => {col: number, row: number};
  }
