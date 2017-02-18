module Blueprint.Components.Alert where

import React
import Blueprint.ComponentsClasses (alertClass)
import Blueprint.PropTypes


type AlertProps  = AlertPropsEx ()

type AlertPropsEx  r  = IPropsEx ( cancelButtonText :: String
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
