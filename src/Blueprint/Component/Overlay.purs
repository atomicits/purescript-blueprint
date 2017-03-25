module Blueprint.Component.Overlay where

import React

import Blueprint.ComponentClass (overlayClass)
import Blueprint.Event (UnitEventHandler)
import Blueprint.Type (Prop, UnknownEventType)


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

type OverlayProps eff = OverlayPropsEx eff ()

type OverlayPropsEx eff r = OverLayablePropsEx
  ( className :: String
  , backdropClassName :: String
  , backdropProps :: ReactElement
  , canOutsideClickClose :: Boolean
  , hasBackdrop :: Boolean
  , didOpen :: UnitEventHandler eff
  , isOpen :: Boolean
  , transitionName :: String
  | r
  )

overlay :: forall eff . Prop (OverlayProps eff) -> Array ReactElement -> ReactElement
overlay = createElement overlayClass
