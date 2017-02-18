module Bluprint.Components.Dialog where

import Blueprint.Components.Overlay (OverLayablePropsEx)
import Blueprint.ComponentsClasses (dialogClass)
import Blueprint.PropTypes (ComponentORString, Prop, UnknownReactType, UnknownStyleType)
import React

type DialogProps = DialogPropsEx ()

type DialogPropsEx r = OverLayablePropsEx
  ( className :: String
  , backdropClassName :: String
  , backdropProps :: UnknownReactType
  , canOutsideClickClose :: Boolean
  , hasBackdrop :: Boolean
  , isOpen :: Boolean
  , iconName :: String
  , isCloseButtonShown :: Boolean
  , style :: UnknownStyleType
  , title :: ComponentORString
  | r
  )

dialog :: Prop DialogProps -> Array ReactElement -> ReactElement
dialog = createElement dialogClass
