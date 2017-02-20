module Blueprint.Component.Toast
  ( ToastProps
  , ToastPropsEx
  , ActionOpt
  , toast
  ) where

import Data.Unit (Unit)
import React (ReactElement, createElement)

import Blueprint.ComponentClass (toastClass)
import Blueprint.Type (ActionProps, ComponentORString, Intent,
LinkProps, Position, Prop, PropsEx )

type ToastProps = ToastPropsEx ()

type ActionOpt =
  { actionProp :: ActionProps
  , linkProp :: LinkProps
  }

type ToastPropsEx r = PropsEx
  ( action ::  ActionOpt
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
  , intent :: Intent
  |r
  )

toast :: Prop ToastProps -> Array ReactElement -> ReactElement
toast = createElement toastClass



--- need to discuss
-- export interface IToasterState {
--     toasts: IToastOptions[];
-- }
