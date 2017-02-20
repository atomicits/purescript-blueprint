module Blueprint.Component.Alert
  ( AlertProps
  , alert
  ) where

import React
import Blueprint.ComponentClass (alertClass)
import Blueprint.Type (Intent, Prop, PropsEx, UnknownEventType, UnknownStyleType)

type AlertProps = PropsEx
  ( cancelButtonText :: String
  , confirmButtonText :: String
  , iconName :: String
  , intent :: Intent
  , isOpen :: Boolean
  , style :: UnknownStyleType
  , onCancel ::  UnknownEventType
  , onConfirm :: UnknownEventType
  )

alert :: Prop AlertProps -> Array ReactElement -> ReactElement
alert = createElement alertClass
