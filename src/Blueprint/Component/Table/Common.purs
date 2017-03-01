module Blueprint.Component.Table.Common where

import Blueprint.Type

--- loadableContent

type LoadableContentProps =
  { loading :: Boolean
  , variableLength :: Boolean
  }

--- grid

type RowIndices =
  { rowIndexStart :: Number
  , rowIndexEnd :: Number
  }

type ColumnIndices =
  { columnIndexStart :: Number
  , columnIndexEnd :: Number
  }

--- contextMenuTargetWrapper

type ContextMenuTargetWrapper =
  { renderContextMenu :: UnknownEventType  --  (e: React.MouseEvent<HTMLElement>) => JSX.Element
  , style :: UnknownStyleType  --  React.CSSProperties
  }

--- utils

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

---
