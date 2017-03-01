module Blueprint.Component.Table.Cell where

import Blueprint.Component.TableClass (cellClass, editableCellClass, jSONFormatClass, truncatedFormatClass, truncatedPopoverModeClass)
import Blueprint.Event (EventHandler)
import Blueprint.Type (Intent, Prop, PropsEx, UnknownStyleType, UnknownFunctionType)
import Prelude (Unit)
import React (ReactElement, createElement)

type CellRenderer = { delete :: UnknownFunctionType } -- (rowIndex: number, columnIndex: number) => React.ReactElement<ICellProps>;

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

newtype TruncatedPopoverMode = TruncatedPopoverMode Int

always :: TruncatedPopoverMode
always = TruncatedPopoverMode 0

never :: TruncatedPopoverMode
never = TruncatedPopoverMode 1

whenTruncated :: TruncatedPopoverMode
whenTruncated = TruncatedPopoverMode 2


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
  ( omitQuotesOnStrings :: Boolean
  , stringify :: a -> String
  )


cell :: Prop CellProps -> Array ReactElement -> ReactElement
cell = createElement cellClass

editableCell :: forall eff. Prop (EditableCellProps eff) -> Array ReactElement -> ReactElement
editableCell = createElement editableCellClass

jSONFormate :: forall a. Prop (JSONFormatProps a) -> Array ReactElement -> ReactElement
jSONFormate = createElement jSONFormatClass

truncatedFormat :: Prop TruncatedFormatProps -> Array ReactElement -> ReactElement
truncatedFormat = createElement truncatedFormatClass

truncatedPopoverMode :: Prop TruncatedPopoverMode -> Array ReactElement -> ReactElement
truncatedPopoverMode = createElement truncatedPopoverModeClass
