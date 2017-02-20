module Blueprint.Component.Button
  ( ButtonProps
  , anchorButton
  , button
  ) where

import React
import Blueprint.ComponentClass (anchorButtonClass, buttonClass)
import Blueprint.Type (ActionPropsEx, Prop, UnknownRefType)

type ButtonProps eff = ActionPropsEx eff
  ( elementRef :: UnknownRefType
  , rightIconName :: String
  , loading :: Boolean
  , type :: String
  )

anchorButton :: forall eff. Prop (ButtonProps eff) -> Array ReactElement -> ReactElement
anchorButton = createElement anchorButtonClass

button :: forall eff. Prop (ButtonProps eff) -> Array ReactElement -> ReactElement
button = createElement buttonClass
