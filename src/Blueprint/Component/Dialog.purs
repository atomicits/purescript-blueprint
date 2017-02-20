module Blueprint.Component.Dialog
  ( DialogProps
  , dialog
  ) where

import React
import CSS (CSS)

import Blueprint.Component.Overlay (OverLayablePropsEx)
import Blueprint.ComponentClass (dialogClass)
import Blueprint.Type (ComponentORString, Prop, UnknownReactType)

type DialogProps =  OverLayablePropsEx
  ( className :: String
  , backdropClassName :: String
  , backdropProps :: UnknownReactType
  , canOutsideClickClose :: Boolean
  , hasBackdrop :: Boolean
  , isOpen :: Boolean
  , iconName :: String
  , isCloseButtonShown :: Boolean
  , style :: CSS
  , title :: ComponentORString
  )

dialog :: Prop DialogProps -> Array ReactElement -> ReactElement
dialog = createElement dialogClass
