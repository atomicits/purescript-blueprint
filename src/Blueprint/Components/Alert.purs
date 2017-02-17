module Blueprint.Components.Alert where

import React
import Blueprint.ComponentsClasses (alertClass)
import Blueprint.PropTypes (IPropsEx, Intent, Prop, UnknownEventProps, UnknownStyleProps)

type AlertProps  = AlertPropsEx ()

type AlertPropsEx  r  = IPropsEx ( cancelButtonText :: String
                                 , confirmButtonText :: String
                                 , iconName :: String
                                 , intent :: Intent
                                 , isOpen :: Boolean
                                 , style :: UnknownStyleProps
                                 , onCancel ::  UnknownEventProps
                                 , onConfirm :: UnknownEventProps
                                 | r
                                 )

alert :: Prop AlertProps -> Array ReactElement -> ReactElement
alert = createElement alertClass
