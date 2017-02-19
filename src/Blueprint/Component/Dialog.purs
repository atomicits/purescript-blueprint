module Blueprint.Component.Dialog where

import Blueprint.Component.Overlay (OverLayablePropsEx)
import Blueprint.ComponentClass (dialogClass)
import Blueprint.Type (ComponentORString, Prop, UnknownReactType, UnknownStyleType)
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
