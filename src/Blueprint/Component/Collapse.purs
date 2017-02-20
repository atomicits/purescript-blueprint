module Blueprint.Component.Collapse
  ( CollapseProps
  , collapse
  ) where

import React

import Blueprint.ComponentClass (collapseClass)
import Blueprint.Type (Prop, PropsEx, UnknownReactType)

type CollapseProps =  PropsEx
  ( comopnent :: UnknownReactType
  , isOpen :: Boolean
  , transitionDuration :: Number
  )

collapse :: Prop CollapseProps -> Array ReactElement -> ReactElement
collapse = createElement collapseClass
