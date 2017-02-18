module Blueprint.Components.Alert where

import Blueprint.ComponentsClasses (alertClass)
import Blueprint.PropTypes (Intent, Prop, PropsEx, UnknownEventType, UnknownStyleType)
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
