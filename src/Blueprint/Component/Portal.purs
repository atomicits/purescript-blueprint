module Blueprint.Component.Portal
  ( PortalProps
  , portal
  ) where

import Prelude (Unit)
import React (ReactElement, createElement)

import Blueprint.ComponentClass (portalClass)
import Blueprint.Event (HTMLElement)
import Blueprint.Type (Prop, PropsEx, UnknownRefType)


type PortalProps = PropsEx
  ( containerRef    :: UnknownRefType
  , onChildrenMount :: Unit -> Unit
  , htmlElement :: HTMLElement
  )

portal :: Prop PortalProps -> Array ReactElement -> ReactElement
portal = createElement portalClass
