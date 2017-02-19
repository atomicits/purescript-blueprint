module Blueprint.Component.Tooltip where

import Blueprint.ComponentClass (tooltipClass)
import Blueprint.Type (ComponentORString, PropsEx, Prop)
import React (ReactElement, createElement)

--- export interface ITooltipProps extends IProps, IIntentProps

type ToolTipProps = ToolTipPropsEx ()

type ToolTipPropsEx r = PropsEx
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

tooltip :: Prop ToolTipProps -> Array ReactElement -> ReactElement
tooltip = createElement tooltipClass
