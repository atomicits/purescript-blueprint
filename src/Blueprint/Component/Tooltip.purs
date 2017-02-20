module Blueprint.Component.Tooltip where

import React (ReactElement, createElement)

import Blueprint.ComponentClass (tooltipClass)
import Blueprint.Type (ComponentORString, Position, Prop, PropsEx, TetherConstraint)

--- export interface ITooltipProps extends IProps, IIntentProps

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
  , onInteraction :: String                   --- TODO --nextOpenState: boolean => void
  |r
  )

tooltip :: Prop TooltipProps -> Array ReactElement -> ReactElement
tooltip = createElement tooltipClass
