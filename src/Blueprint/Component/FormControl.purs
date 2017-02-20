module Blueprint.Component.FormControl where

import React
import Blueprint.Type
import Blueprint.Event (EventHandler)
import Prelude
import React.DOM as RD
import React.DOM.Props as RP

type FormControlProps = FormControlPropsEx ()

type FormControlPropsEx r = PropsEx
  ( checked :: Boolean
  , defaultChecked :: Boolean
  , disabled :: Boolean
  , inputRef :: String  --  (ref: HTMLInputElement) => any;
  , label :: String
  , onChange :: String  -- EventHandler eff   -- React.FormEventHandler<HTMLInputElement>;
  , leftIconName :: String
  , placeholder :: String
  , rightElement :: UnknownEventType
  , type :: String
  , rightElementWidth :: Number
  , allowNumericCharactersOnly :: Boolean
  , majorStepSize :: Number
  , max :: Number
  , min :: Number
  , minorStepSizen :: Number
  , stepSize :: Number
  , value :: ComponentORString
  , onValueChange ::  ComponentORString -> Unit -- (valueAsNumber: number, valueAsString: string): void;
  , name :: String
  , options :: OptionProps
  , selectedValue :: String
  , buttonPosition :: Position
  |r
  )

-- newtype LabelModifier = LabelModifier String

-- inline :: LabelModifier
-- inline = LabelModifier "pt-inline"

-- newtype CheckBoxModifier = CheckBoxModifier String

-- checkBoxchecked :: CheckBoxModifier
-- checkBoxchecked = CheckBoxModifier "checked"

-- checkBoxdisabled :: CheckBoxModifier
-- checkBoxdisabled = CheckBoxModifier "disabled"

-- checkBoxindeterminate :: CheckBoxModifier
-- checkBoxindeterminate = CheckBoxModifier "indeterminate"

-- checkBoxrightAligned :: CheckBoxModifier
-- checkBoxrightAligned = CheckBoxModifier "pt-align-right"

-- checkBoxlarge :: CheckBoxModifier
-- checkBoxlarge = CheckBoxModifier "pt-large"

-- newtype RadioModifier = RadioModifier String

-- radioselected :: RadioModifier
-- radioselected = RadioModifier "checked"

-- radiodisabled :: RadioModifier
-- radiodisabled = RadioModifier "disabled"

-- radiorightAligned :: RadioModifier
-- radiorightAligned = RadioModifier "pt-align-right"

-- radiolarge :: RadioModifier
-- radiolarge = RadioModifier "pt-large"

-- newtype SwitchModifier = SwitchModifier String

-- switchselected :: SwitchModifier
-- switchselected = SwitchModifier "checked"

-- switchdisabled :: SwitchModifier
-- switchdisabled = SwitchModifier "disabled"

-- switchrightAligned :: SwitchModifier
-- switchrightAligned = SwitchModifier "pt-align-right"

-- switchlarge :: SwitchModifier
-- switchlarge = SwitchModifier "pt-large"

-- textInputRoundedends :: TextInputModifier
-- textInputRoundedends = TextInputModifier "pt-round"

-- textInputlarge :: TextInputModifier
-- textInputlarge = TextInputModifier "pt-large"

-- textInputprimary :: TextInputModifier
-- textInputprimary = TextInputModifier "pt-intent-primary"

-- textInputsuccess :: TextInputModifier
-- textInputsuccess = TextInputModifier "pt-intent-success"

-- textInputwarning :: TextInputModifier
-- textInputwarning = TextInputModifier "pt-intent-warning"

-- textInputdanger :: TextInputModifier
-- textInputdanger = TextInputModifier "pt-intent-danger"

-- textInputfill :: TextInputModifier
-- textInputfill = TextInputModifier "pt-fill"

newtype TextInputModifier = TextInputModifier String

textInputDisabled :: TextInputModifier
textInputDisabled = TextInputModifier "disabled"

textInputReadonly :: TextInputModifier
textInputReadonly = TextInputModifier "readonly"


textInputModifier ::
  { textInputRoundedends :: TextInputModifier
  , textInputLarge :: TextInputModifier
  , textInputPrimary :: TextInputModifier
  , textInputSuccess :: TextInputModifier
  , textInputWarning :: TextInputModifier
  , textInputDanger :: TextInputModifier
  , textInputFill :: TextInputModifier
  }
textInputModifier =
  { textInputRoundedends : TextInputModifier "pt-round"
  , textInputLarge       : TextInputModifier "pt-large"
  , textInputPrimary     : TextInputModifier "pt-intent-primary"
  , textInputSuccess     : TextInputModifier "pt-intent-success"
  , textInputWarning     : TextInputModifier "pt-intent-warning"
  , textInputDanger      : TextInputModifier "pt-intent-danger"
  , textInputFill        :  TextInputModifier "pt-fill"
  }


newtype TextAreaModifier = TextAreaModifier String

textAreaDisabled :: TextAreaModifier
textAreaDisabled = TextAreaModifier "disabled"

textAreaReadonly :: TextAreaModifier
textAreaReadonly = TextAreaModifier "readonly"

textAreaModifier ::
  { textAreaLarge :: TextAreaModifier
  , textAreaPrimary :: TextAreaModifier
  , textAreaDanger :: TextAreaModifier
  , textAreaFill :: TextAreaModifier
  }
textAreaModifier =
  { textAreaLarge       : TextAreaModifier "pt-large"
  , textAreaPrimary     : TextAreaModifier "pt-intent-primary"
  , textAreaDanger      : TextAreaModifier "pt-intent-danger"
  , textAreaFill        : TextAreaModifier "pt-fill"
  }




textInput :: TextInputModifier -> Array ReactElement -> ReactElement
textInput (TextInputModifier m) c =
  RD.div [ RP.className $ "pt-input " <> m] c
