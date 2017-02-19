module Blueprint.Component.Alert where

import Blueprint.ComponentClass (alertClass)
import Blueprint.Type (Intent, Prop, PropsEx, UnknownEventType, UnknownStyleType)
import React

type AlertProps = AlertPropsEx ()

-- DISCUSS: Do we need this to be extensible?
type AlertPropsEx r  = PropsEx
  ( cancelButtonText :: String
  , confirmButtonText :: String
  , iconName :: String
  , intent :: Intent
  , isOpen :: Boolean
  , style :: UnknownStyleType
  , onCancel ::  UnknownEventType
  , onConfirm :: UnknownEventType
  | r
  )

alert :: Prop AlertProps -> Array ReactElement -> ReactElement
alert = createElement alertClass
