module Blueprint.Component.Collapse
  ( CollapseProps
  , collapse
  ) where

import React (ReactElement, createElement)

import Blueprint.ComponentClass (collapseClass)
import Blueprint.Type (Prop, PropsEx)

type CollapseProps =  PropsEx
  ( comopnent :: ReactElement
  , isOpen :: Boolean
  , transitionDuration :: Number
  )

collapse :: Prop CollapseProps -> Array ReactElement -> ReactElement
collapse = createElement collapseClass
