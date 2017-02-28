module Blueprint.Component.Table.TableBody where

import Prelude

import React
import Blueprint.ComponentClass
import Blueprint.Type
import Blueprint.Component.Table.Interactions
import Blueprint.Component.Table.Locator
import Blueprint.Component.Table.Cell

type TableBodyProps = TableBodyPropsEx ()

type TableBodyPropsEx r = PropsEx
  ( cellRenderer :: CellRenderer
  , grid :: String -- grid
  , loading :: Boolean
  , locator :: Locator
  , viewportRect :: String --  Rect
  , renderBodyContextMenu :: ContextMenuRenderer
  |r
  )
