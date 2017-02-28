module Blueprint.Component.Table.Cell where


import Prelude
import React
import Blueprint.ComponentClass
import Blueprint.Type

type CellRenderer = {} -- (rowIndex: number, columnIndex: number) => React.ReactElement<ICellProps>;

type CellProps = CellPropsEx ()

type CellPropsEx r = PropsEx
  ( key :: String
  , style :: String -- React.CSSProperties;
  , interactive :: Boolean
  , loading :: Boolean
  , tooltip :: String
  , truncated :: Boolean
  , intent :: Intent
  |r
  )

type EditableCellProps = EditableCellPropsEx ()

type EditableCellPropsEx r = CellPropsEx
  ( value :: String
  , onCancel :: String -> Unit -- (value: string) => void;
  , onChange :: String -> Unit -- (value: string) => void;
  , onConfirm :: String -> Unit -- (value: string) => void;
  , isEditing :: Boolean
  |r
  )


data TruncatedPopoverMode
   =  ALWAYS
   | NEVER
   | WHEN_TRUNCATED

type TruncatedFormatProps = TruncatedFormatPropsEx ()

type TruncatedFormatPropsEx r = PropsEx
  ( children :: String
  , detectTruncation :: Boolean
  , preformatted :: Boolean
  , showPopover :: TruncatedPopoverMode
  , truncateLength :: Number
  , truncationSuffix :: String
  , isTruncated :: Boolean
  |r
  )

type JSONFormatProps = TruncatedFormatPropsEx
  ( children :: String -- any
  , omitQuotesOnStrings :: Boolean
  , stringify :: String -- (obj: any) => string;
  )
