module Bluprint.Components.Dialog where

import React
import Blueprint.Components.Overlay (IOverLayablePropsEx)
import Blueprint.PropTypes (ComponentORString, Prop, UnknownReactType, UnknownStyleType)
import Blueprint.ComponentsClasses (dialogClass)

type IDialogProps = IDialogPropsEx ()
type IDialogPropsEx r  = IOverLayablePropsEx ( className :: String
                                             , backdropClassName :: String
                                             , backdropProps :: UnknownReactType
                                             , canOutsideClickClose :: Boolean
                                             , hasBackdrop :: Boolean
                                             , isOpen :: Boolean
                                             , iconName :: String
                                             , isCloseButtonShown :: Boolean
                                             , style :: UnknownStyleType
                                             , title :: ComponentORString
                                             |r)


dialog :: Prop IDialogProps -> Array ReactElement -> ReactElement
dialog = createElement dialogClass
