module Blueprint.Component.FormControl
  ( CheckboxProps
  , SwitchProps
  , RadioProps
  , NumericInputProps
  , ControlPropsEx
  , IntOrString
  , checkbox
  , switch
  , radio
  , radioGroup
  , numericInput
  ) where

import Control.Monad.Eff (Eff)
import React (ReactElement, createElement)

import Blueprint.ComponentClass (checkboxClass, inputGroupClass, numericInputClass, radioClass, radioGroupClass, switchClass)
import Blueprint.Event (EventHandler, EventHandler2, HTMLElement, SyntheticEvent)
import Blueprint.Type (ControlledPropsEx, Intent, OptionProps, Position, Prop, PropsEx)

type ControlProps eff a = ControlPropsEx eff a ()
type ControlPropsEx eff a r =  PropsEx
  ( checked :: Boolean
  , defaultChecked :: Boolean
  , disabled :: Boolean
  , inputRef :: HTMLElement -> Eff eff a
  , label :: String
  , onChange :: EventHandler eff (SyntheticEvent eff)
  | r
  )


type CheckboxProps eff a = ControlPropsEx eff a
  ( defaultIndeterminate :: Boolean
  , indeterminate :: Boolean
  )

checkbox :: forall eff a . Prop (CheckboxProps eff a) -> Array ReactElement -> ReactElement
checkbox = createElement checkboxClass


type SwitchProps eff a  = ControlPropsEx eff a ()

switch :: forall eff a . Prop (SwitchProps eff a) -> Array ReactElement -> ReactElement
switch = createElement switchClass


type RadioProps eff a  = ControlPropsEx eff a ()

radio :: forall eff a . Prop (RadioProps eff a) -> Array ReactElement -> ReactElement
radio = createElement radioClass


type RadioGroupProps eff =
  { disabled :: Boolean
  , label :: String
  , name :: String
  , onChange ::  EventHandler eff (SyntheticEvent eff)
  , options :: Array OptionProps
  , selectedValue :: String
  }


radioGroup :: forall eff.  Prop (RadioGroupProps eff) -> Array ReactElement -> ReactElement
radioGroup = createElement radioGroupClass


type InputGroupProps eff a = ControlledPropsEx eff
  ( className :: String
  , intent :: Intent
  , disabled :: Boolean
  , inputRef :: HTMLElement -> Eff eff a
  , leftIconName :: String
  , placeholder :: String
  , rightElement :: ReactElement
  , type :: String
  )


inputGroup :: forall eff a . Prop (InputGroupProps eff a) -> ReactElement
inputGroup p = createElement inputGroupClass p []

data IntOrString = Int | String

type NumericInputProps eff =
  { className :: String
  , intent :: Intent
  , allowNumericCharactersOnly :: Boolean
  , buttonPosition :: Position
  , disabled :: Boolean
  , leftIconName :: String
  , placeholder :: String
  , majorStepSize :: Int
  , max :: Int
  , min :: Int
  , minorStepSize :: Number
  , stepSize :: Int
  , value :: IntOrString
  , onValueChange :: EventHandler2 eff Int String
  }

numericInput :: forall eff . Prop (NumericInputProps eff) -> Array ReactElement -> ReactElement
numericInput = createElement numericInputClass
