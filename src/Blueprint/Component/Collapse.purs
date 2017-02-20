module Blueprint.Component.Collapse where

import Blueprint.ComponentClass (collapseClass)
import Blueprint.Type (Prop, PropsEx, UnknownReactType)
import React

type CollapseProps = CollapsePropsEx ()

-- DISCUSS: Do we need this to be extensible?
type CollapsePropsEx r = PropsEx
  ( comopnent :: UnknownReactType
  , isOpen :: Boolean
  , transitionDuration :: Number
  | r
  )

collapse :: Prop CollapseProps -> Array ReactElement -> ReactElement
collapse = createElement collapseClass
