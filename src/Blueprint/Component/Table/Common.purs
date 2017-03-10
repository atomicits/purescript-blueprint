module Blueprint.Component.Table.Common where

import React (ReactElement)

import Blueprint.Event (HTMLElement)
import Blueprint.Type (UnknownStyleType)

type LoadableContentProps =
  { loading :: Boolean
  , variableLength :: Boolean
  }

type RowIndices =
  { rowIndexStart :: Number
  , rowIndexEnd :: Number
  }

type ColumnIndices =
  { columnIndexStart :: Number
  , columnIndexEnd :: Number
  }

type ContextMenuTargetWrapper =
  { renderContextMenu :: HTMLElement -> ReactElement
  , style :: UnknownStyleType
  }

data ClassValue
  = String
  | Number
  | ClassDictionary
  | ClassArray

type ClassDictionary = { id :: String}

type ClassArray = { classArray :: Array ClassValue}

--- roundSize

  -- TODO RoundSize

--- rect

data AnyRect
  = Rect
  | ClientRect
