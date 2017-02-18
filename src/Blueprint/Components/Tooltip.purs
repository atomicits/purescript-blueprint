module Blueprint.Components.Tooltip where

import Blueprint.ComponentsClasses (tooltipClass)
import Blueprint.PropTypes (ComponentORString, PropsEx, Prop)
import React (ReactElement, createElement)

--- export interface ITooltipProps extends IProps, IIntentProps

type TooltipProps = TooltipPropsEx ()

type TooltipPropsEx r = PropsEx
  ( content :: ComponentORString
  , constraints :: String                     --- TODO --ITetherConstraint []
  , defaultIsOpen :: Boolean
  , hoverCloseDelay :: Number
  , hoverOpenDelay :: Number
  , inline :: Boolean
  , isDisabled :: Boolean
  , isOpen :: Boolean
  , portalClassName ::  String
  , position :: String                       --- TODO  -- Position
  , rootElementTag :: String
  , tooltipClassName :: String
  , transitionDuration :: Number
  , useSmartArrowPositioning :: Boolean
  , useSmartPositioningb :: Boolean
  , onInteraction :: String                   --- TODO --nextOpenState: boolean) => void
  | r
  )

tooltip :: Prop TooltipProps -> Array ReactElement -> ReactElement
tooltip = createElement tooltipClass
