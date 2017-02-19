module Blueprint.Components.Overlay where

import Blueprint.ComponentsClasses (overlayClass)
import Blueprint.PropTypes (Prop, UnknownEventType, UnknownFunctionType, UnknownJSXElementType)
import React

type OverLayableProps = OverLayablePropsEx ()

type OverLayablePropsEx r =
  { autoFocus :: Boolean
  , canEscapeKeyClose :: Boolean
  , enforceFocus :: Boolean
  , inline :: Boolean
  , lazy :: Boolean
  , transitionDuration :: Int
  , onClose :: UnknownEventType
  | r
  }

type OverlayProps = OverlayPropsEx ()

type OverlayPropsEx r = OverLayablePropsEx
  ( className :: String
  , backdropClassName :: String
  , backdropProps :: UnknownJSXElementType
  , canOutsideClickClose :: Boolean
  , hasBackdrop :: Boolean
  , didOpen :: UnknownFunctionType -- () => any;
  , isOpen :: Boolean
  , transitionName :: String
  | r
  )

overlay :: Prop OverlayProps -> Array ReactElement -> ReactElement
overlay = createElement overlayClass
