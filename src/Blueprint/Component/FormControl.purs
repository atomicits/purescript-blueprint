module Blueprint.Component.FormControl where

import Prelude (Unit)
import React
import Blueprint.Type
import Blueprint.Event (EventHandler)

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

-- newtype TextInputModifier = TextInputModifier String

-- textInputDisabled :: TextInputModifier
-- textInputDisabled = TextInputModifier "disabled"

-- textInputReadonly :: TextInputModifier
-- textInputReadonly = TextInputModifier "readonly"

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
