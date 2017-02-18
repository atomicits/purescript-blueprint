module Blueprint.Components.Collapse where

import Blueprint.PropTypes
import Blueprint.ComponentsClasses
import React

type CollapseProps = CollapsePropsEx ()

type CollapsePropsEx r = IPropsEx ( comopnent :: UnknownReactType
                                  , isOpen :: Boolean
                                  , transitionDuration :: Number
                                  | r
                                  )

collapse :: Prop CollapseProps -> Array ReactElement -> ReactElement
collapse = createElement collapseClass
