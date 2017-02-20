module Blueprint.Component.Toast where

import Data.Unit(Unit)
import React (ReactElement, createElement)

import Blueprint.ComponentClass (toastClass)
import Blueprint.Type (ComponentORString, Position, Prop, PropsEx)

type ToastProps = ToastPropsEx ()

type ToastPropsEx r = PropsEx
  ( action :: String  --IActionProps & ILinkProps;
  , iconName :: String
  , message :: ComponentORString
  , onDismiss :: Boolean -> Unit   --- (didTimeoutExpire: boolean) => void;
  , timeout :: Number
  , autoFocus :: Boolean
  , canEscapeKeyClear :: Boolean
  , inline :: Boolean
  , position :: Position
  , toasts :: String     --  IToastOptions[];
  , show :: String
  , update :: Unit
  , dismiss :: Unit
  , clear :: Unit
  , getToasts :: String    --IToastOptions[];
  |r
  )

toast :: Prop ToastProps -> Array ReactElement -> ReactElement
toast = createElement toastClass
