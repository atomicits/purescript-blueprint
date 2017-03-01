module Blueprint.Component.Toast  where

import React (ReactElement, createElement)

import Blueprint.Type (ActionPropsEx, ComponentORString, Intent, Prop)
import Blueprint.ComponentClass (toastClass, toasterClass)
import Blueprint.Event (EventHandler)


type ToastProps eff = ToastPropsEx eff ()

type ToastPropsEx eff f =
  { className :: String
  , intent :: Intent
  , action :: ActionOpt eff
  , iconName :: String
  , message :: ComponentORString
  , onDismiss :: EventHandler eff Boolean
  , timeout :: Int
  | f
  }

type ActionOpt eff = ActionPropsEx eff
  ( href :: String
  , target :: String
  )

type ToastOptions eff = ToastPropsEx eff ( key :: String )


toast :: forall eff. Prop (ToastProps eff) -> Array ReactElement -> ReactElement
toast = createElement toastClass


toaster :: forall eff. Prop (ToastProps eff) -> Array ReactElement -> ReactElement
toaster = createElement toasterClass
