module Blueprint.Components.Button where

import React
import Blueprint.PropTypes (IActionPropsEx, Prop, UnknownRefType)
import Blueprint.ComponentsClasses (anchorButtonClass, buttonClass)

type ButtonProps =  ButtonPropsEx ()
type ButtonPropsEx r =  IActionPropsEx ( elementRef :: UnknownRefType
                                       , rightIconName :: String
                                       , loading :: Boolean
                                       , type :: String
                                       | r
                                       )


button :: Prop ButtonProps -> Array ReactElement -> ReactElement
button = createElement buttonClass


anchorButton :: Prop ButtonProps -> Array ReactElement -> ReactElement
anchorButton = createElement anchorButtonClass
