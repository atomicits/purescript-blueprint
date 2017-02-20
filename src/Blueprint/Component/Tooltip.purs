module Blueprint.Component.Tooltip
  ( TooltipProps
  , TooltipPropsEx
  , tooltip
  ) where

import Data.Unit (Unit)
import React (ReactElement, createElement)

import Blueprint.ComponentClass (tooltipClass)
import Blueprint.Type (ComponentORString, Position, Prop, PropsEx, TetherConstraint, Intent)

type TooltipProps = TooltipPropsEx ()

type TooltipPropsEx r = PropsEx
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
  , onInteraction :: Boolean -> Unit  --- TODO --nextOpenState: boolean => void
  , intent :: Intent
  |r
  )

tooltip :: Prop TooltipProps -> Array ReactElement -> ReactElement
tooltip = createElement tooltipClass
