module Blueprint.Component.Table.Cell where

import Blueprint.Event (EventHandler)
import Blueprint.Type (Intent, PropsEx, UnknownStyleType)
import Prelude (Unit)


type CellRenderer = {} -- (rowIndex: number, columnIndex: number) => React.ReactElement<ICellProps>;

type CellProps = CellPropsEx ()

type CellPropsEx r = PropsEx
  ( key :: String
  , style :: UnknownStyleType
  , interactive :: Boolean
  , loading :: Boolean
  , tooltip :: String
  , truncated :: Boolean
  , intent :: Intent
  |r
  )

type EditableCellProps eff   = EditableCellPropsEx eff ()

type EditableCellPropsEx eff r = CellPropsEx
  ( value :: String
  , onCancel :: EventHandler eff Unit
  , onChange :: EventHandler eff Unit
  , onConfirm :: EventHandler eff Unit
  , isEditing :: Boolean
  |r
  )


data TruncatedPopoverMode  --- Enum
   = ALWAYS
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

type JSONFormatProps a = TruncatedFormatPropsEx
  ( children ::  a
  , omitQuotesOnStrings :: Boolean
  , stringify :: a -> String
  )
