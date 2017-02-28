module Blueprint.Component.Table.Column where

import Prelude

import React

import Blueprint.Component.Table.Cell
import Blueprint.Component.Table.Headers
import Blueprint.Component.Table.Regions
import Blueprint.ComponentClass
import Blueprint.Type

data NumberOrString = Number | String

type ColumnProps = PropsEx
  ( id :: NumberOrString
  , loadingOptions :: Array  ColumnLoadingOptions -- ColumnLoadingOption []
  , renderCell :: CellRenderer
  , renderColumnHeader :: ColumnHeaderRenderer
  , columnNameProps :: ColumnNameProps
  )
