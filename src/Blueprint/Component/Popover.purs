module Blueprint.Component.Popover where

import Prelude

import Blueprint.Component.Overlay (OverLayablePropsEx)
import Blueprint.ComponentClass (popoverClass)
import Blueprint.Type (ComponentORString, Position, Prop, TetherConstraint, UnknownFunctionType, UnknownReactType)
import React (ReactElement, createElement)

type PopoverProps = PopoverPropsEx ()

newtype PopoverInteractionKind = PopoverInteractionKind Int


-- TODO: Lets use camelCase for field names no _ in field names
popoverInteractionKind ::
  { click :: PopoverInteractionKind
  , clickTargetOnly :: PopoverInteractionKind
  , hover :: PopoverInteractionKind
  , hoverTargetOnly :: PopoverInteractionKind
  }
popoverInteractionKind =
  { click : PopoverInteractionKind 0
  , clickTargetOnly : PopoverInteractionKind 1
  , hover : PopoverInteractionKind 2
  , hoverTargetOnly : PopoverInteractionKind 3
  }

type PopoverPropsEx r = OverLayablePropsEx
  ( className :: String
  , backdropProps :: UnknownReactType
  , content :: ComponentORString
  , arrowSize :: Int
  , constrains :: TetherConstraint
  , defaultIsOpen :: Boolean
  , hoverCloseDelay :: Int
  , hoverOpenDelay :: Int
  , inheritDarkTheme :: Boolean
  , interactionKind :: PopoverInteractionKind
  , isDisabled :: Boolean
  , isModal :: Boolean
  , isOpen :: Boolean
  , onInteraction :: Boolean -> Unit
  , popoverClassName :: String
  , popoverDidOpen :: UnknownFunctionType
  , popoverWillClose :: UnknownFunctionType
  , popoverWillOpen :: UnknownFunctionType
  , portalClassName :: String
  , position :: Position
  , rootElementTag :: String
  , useSmartArrowPositioning :: Boolean
  , useSmartPositioning :: Boolean
  | r
  )

popover :: Prop PopoverProps -> Array ReactElement -> ReactElement
popover = createElement popoverClass
