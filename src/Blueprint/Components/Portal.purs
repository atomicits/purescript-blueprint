module Blueprint.Components.Portal where

import React (ReactElement, createElement)
import Blueprint.PropTypes (IPropsEx, Prop)
import Data.Unit (Unit)
import Blueprint.ComponentsClasses (portalClass)

-- export interface IPortalProps extends IProps, React.HTMLProps<HTMLDivElement> {


type PortalProps = PortalPropsEx ()

type PortalPropsEx r = IPropsEx ( containerRef :: String   -- TODO (ref: HTMLDivElement) => void;
                                , onChildrenMount :: Unit  -- TODO () => void;
                                |r
                                )

portal :: Prop PortalProps -> Array ReactElement -> ReactElement
portal = createElement portalClass
