module Blueprint.Component.Button
  ( ButtonProps
  , anchorButton
  , button
  ) where

import React
import Blueprint.Event (HTMLElement)
import Blueprint.ComponentClass (anchorButtonClass, buttonClass)
import Blueprint.Type (ActionPropsEx, Prop)

type ButtonProps a eff = ActionPropsEx  eff
  ( elementRef :: HTMLElement -> a
  , rightIconName :: String
  , loading :: Boolean
  , type :: String
  )

anchorButton :: forall a eff. Prop (ButtonProps a eff) -> Array ReactElement -> ReactElement
anchorButton = createElement anchorButtonClass

button :: forall a eff. Prop (ButtonProps a eff) -> Array ReactElement -> ReactElement
button = createElement buttonClass
