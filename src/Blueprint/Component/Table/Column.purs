module Blueprint.Component.Table.Column where

import React (ReactElement, createElement)

import Blueprint.Component.Table.Cell (CellRenderer)
import Blueprint.Component.Table.Headers (ColumnHeaderRenderer, ColumnNameProps)
import Blueprint.Component.Table.Regions (ColumnLoadingOptions)
import Blueprint.Component.TableClass (columnClass)
import Blueprint.Type (Prop, PropsEx)

data NumberOrString = Number | String

type ColumnProps = PropsEx
  ( id :: NumberOrString
  , loadingOptions :: Array ColumnLoadingOptions
  , renderCell :: CellRenderer
  , renderColumnHeader :: ColumnHeaderRenderer
  , columnNameProps :: ColumnNameProps
  )

column :: Prop ColumnProps -> Array ReactElement -> ReactElement
column = createElement columnClass
