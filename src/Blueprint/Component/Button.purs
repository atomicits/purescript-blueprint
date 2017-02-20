module Blueprint.Component.Button where

import Blueprint.ComponentClass (anchorButtonClass, buttonClass)
import Blueprint.Type (ActionPropsEx, Prop, UnknownRefType)
import React

type ButtonProps =  ButtonPropsEx ()

-- DISCUSS: Do we need this to be extensible?
type ButtonPropsEx r = ActionPropsEx
  ( elementRef :: UnknownRefType
  , rightIconName :: String
  , loading :: Boolean
  , type :: String -- TODO: lets avoid using keywords in field names.
  | r
  )

anchorButton :: Prop ButtonProps -> Array ReactElement -> ReactElement
anchorButton = createElement anchorButtonClass

button :: Prop ButtonProps -> Array ReactElement -> ReactElement
button = createElement buttonClass
