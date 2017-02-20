module Blueprint.Component.Portal
  ( PortalProps
  , portal
  ) where

import Data.Unit (Unit)
import React (ReactElement, createElement)

import Blueprint.ComponentClass (portalClass)
import Blueprint.Type (Prop, PropsEx)

-- export interface IPortalProps extends IProps, React.HTMLProps<HTMLDivElement> {

type PortalProps = PropsEx
  ( containerRef    :: String        -- TODO (ref: HTMLDivElement) => void;
  , onChildrenMount :: Unit -> Unit
  )

portal :: Prop PortalProps -> Array ReactElement -> ReactElement
portal = createElement portalClass
