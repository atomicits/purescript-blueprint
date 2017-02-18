module Blueprint.Components.Toast where

import Prelude
import Blueprint.PropTypes (ComponentORString, IPropsEx, Prop)
import Bluprint.CommonTypes (Position)
import React (ReactElement, createElement)
import Blueprint.ComponentsClasses (toastClass)

type ToastProps  = ToastPropsEx ()

type ToastPropsEx r = IPropsEx ( action :: String  --IActionProps & ILinkProps;
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
