module Blueprint.Components.Tooltip where

import React (ReactElement, createElement)
import Blueprint.ComponentsClasses (tooltipClass)
import Blueprint.PropTypes (ComponentOrString, IPropsEx, Prop)


--- export interface ITooltipProps extends IProps, IIntentProps

type TooltipProps = TooltipPropsEx ()

type TooltipPropsEx r = IPropsEx ( content :: ComponentOrString
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
                                 |r
                                 )

tooltip :: Prop TooltipProps -> Array ReactElement -> ReactElement
tooltip = createElement tooltipClass
