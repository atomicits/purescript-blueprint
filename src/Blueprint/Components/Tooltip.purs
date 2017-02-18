module Blueprint.Components.Tooltip where

import Prelude
import Blueprint.PropTypes
import Bluprint.CommonTypes
import Blueprint.Components.Overlay
import React
import Blueprint.ComponentsClasses

--- export interface ITooltipProps extends IProps, IIntentProps

type TooltipProps = TooltipPropsEx ()

type TooltipPropsEx r = IPropsEx ( content :: ComponentORString
                                 , constraints :: ITetherConstraint
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
                                 , onInteraction :: String                   --- TODO --nextOpenState: boolean) => void
                                 |r
                                 )

tooltip :: Prop TooltipProps -> Array ReactElement -> ReactElement
tooltip = createElement tooltipClass
