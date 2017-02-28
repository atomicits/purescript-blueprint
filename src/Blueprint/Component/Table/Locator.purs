module Blueprint.Component.Table.Locator where

import Prelude

import React

import Blueprint.ComponentClass
import Blueprint.Type

type Locator =
  { getWidestVisibleCellInColumn :: Number -> Number -- (columnIndex: number) => number;
  , convertPointToColumn :: Number -> Number -- (clientX: number) => number;
  , convertPointToRow :: Number -> Number -- (clientY: number) => number;
  , convertPointToCell :: String  -- (clientX: number, clientY: number) => {col: number, row: number};
  }
