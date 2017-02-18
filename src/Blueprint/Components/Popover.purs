module Blueprint.Components.Popover where

import Prelude
import React (ReactElement, createElement)
import Blueprint.ComponentsClasses (popoverClass)
import Blueprint.PropTypes (ComponentORString, ITetherConstraint, Prop, UnknownFunctionType, UnknownReactType)
import Bluprint.CommonTypes (Position)
import Blueprint.Components.Overlay (IOverLayablePropsEx)


type IPopoverProps = IPopoverPropsEx ()


newtype PopoverInteractionKind = PopoverInteractionKind Int
popoverInteractionKind :: { click :: PopoverInteractionKind
                          , click_target_only :: PopoverInteractionKind
                          , hover :: PopoverInteractionKind
                          , hover_target_only :: PopoverInteractionKind
                          }
popoverInteractionKind = { click :  PopoverInteractionKind 0
                         , click_target_only :  PopoverInteractionKind 1
                         , hover :  PopoverInteractionKind 2
                         , hover_target_only :  PopoverInteractionKind 3
                         }

type IPopoverPropsEx r =
  IOverLayablePropsEx ( className :: String
                      , backdropProps :: UnknownReactType
                      , content :: ComponentORString
                      , arrowSize :: Int
                      , constrains :: ITetherConstraint
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
                      |r)


popover :: Prop IPopoverProps -> Array ReactElement -> ReactElement
popover = createElement popoverClass
