module Blueprint.Component.Portal where

import Data.Unit (Unit)
import React (ReactElement, createElement)

import Blueprint.ComponentClass (portalClass)
import Blueprint.Type (Prop, PropsEx)

-- export interface IPortalProps extends IProps, React.HTMLProps<HTMLDivElement> {

type PortalProps = PortalPropsEx ()

type PortalPropsEx r = PropsEx
  ( containerRef    :: String   -- TODO (ref: HTMLDivElement) => void;
  , onChildrenMount :: Unit  -- TODO () => void;
  |r
  )

portal :: Prop PortalProps -> Array ReactElement -> ReactElement
portal = createElement portalClass
