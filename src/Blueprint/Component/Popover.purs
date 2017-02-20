module Blueprint.Component.Popover
  ( PopoverInteractionKind
  , click
  , clickTargetOnly
  , hover
  , hoverTargetOnly
  , PopoverProps
  , popover
  ) where

import Blueprint.Component.Overlay (OverLayablePropsEx)
import Blueprint.ComponentClass (popoverClass)
import Blueprint.Event (EventHandler, UnitEventHandler)
import Blueprint.Type
import React (ReactElement, createElement)


newtype PopoverInteractionKind = PopoverInteractionKind Int

click :: PopoverInteractionKind
click = PopoverInteractionKind 0

clickTargetOnly :: PopoverInteractionKind
clickTargetOnly = PopoverInteractionKind 1

hover :: PopoverInteractionKind
hover = PopoverInteractionKind 2

hoverTargetOnly :: PopoverInteractionKind
hoverTargetOnly = PopoverInteractionKind 3

type PopoverProps eff = OverLayablePropsEx
  ( className :: String
  , backdropProps :: UnknownReactType
  , content :: ComponentORString
  , arrowSize :: Int
  , constrains :: Array TetherConstraint
  , defaultIsOpen :: Boolean
  , hoverCloseDelay :: Int
  , hoverOpenDelay :: Int
  , inheritDarkTheme :: Boolean
  , interactionKind :: PopoverInteractionKind
  , isDisabled :: Boolean
  , isModal :: Boolean
  , isOpen :: Boolean
  , onInteraction :: EventHandler eff Boolean
  , popoverClassName :: String
  , popoverDidOpen :: UnitEventHandler eff
  , popoverWillClose :: UnitEventHandler eff
  , popoverWillOpen :: UnitEventHandler eff
  , portalClassName :: String
  , position :: Position
  , rootElementTag :: String
  , useSmartArrowPositioning :: Boolean
  , useSmartPositioning :: Boolean
  )

popover :: forall eff. Prop (PopoverProps eff) -> Array ReactElement -> ReactElement
popover = createElement popoverClass
