module Blueprint.Components.Collapse where

import Blueprint.ComponentsClasses (collapseClass)
import Blueprint.PropTypes (Prop, PropsEx, UnknownReactType)
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
