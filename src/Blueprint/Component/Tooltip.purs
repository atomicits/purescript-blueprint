module Blueprint.Component.Tooltip
  ( TooltipProps
  , TooltipPropsEx
  , tooltip
  ) where

import React (ReactElement, createElement)

import Blueprint.ComponentClass (tooltipClass)
import Blueprint.Event (EventHandler)
import Blueprint.Type (ComponentORString, Position, Prop, PropsEx, TetherConstraint, Intent)
import Data.Unit (Unit)


type TooltipProps eff = TooltipPropsEx eff ()

type TooltipPropsEx eff r = PropsEx
  ( content :: ComponentORString
  , constraints :: TetherConstraint
  , defaultIsOpen :: Boolean
  , hoverCloseDelay :: Number
  , hoverOpenDelay :: Number
  , inline :: Boolean
  , isDisabled :: Boolean
  , isOpen :: Boolean
  , portalClassName ::  String
  , position :: Position
  , rootElementTag :: String
  , tooltipClassName :: String
  , transitionDuration :: Number
  , useSmartArrowPositioning :: Boolean
  , useSmartPositioningb :: Boolean
  , onInteraction :: EventHandler eff  Unit
  , intent :: Intent
  |r
  )

tooltip :: forall eff. Prop (TooltipProps eff) -> Array ReactElement -> ReactElement
tooltip = createElement tooltipClass
