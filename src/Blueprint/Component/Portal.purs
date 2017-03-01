module Blueprint.Component.Portal
  ( PortalProps
  , portal
  ) where

import Blueprint.ComponentClass (portalClass)
import Blueprint.Type (Prop, PropsEx, UnknownRefType)
import Data.Unit (Unit)
import React (ReactElement, createElement)

-- export interface IPortalProps extends IProps, React.HTMLProps<HTMLDivElement> {

type PortalProps = PropsEx
  ( containerRef    :: UnknownRefType
  , onChildrenMount :: Unit -> Unit
  )

portal :: Prop PortalProps -> Array ReactElement -> ReactElement
portal = createElement portalClass
