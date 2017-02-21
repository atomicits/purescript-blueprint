module Blueprint.Component.Breadcrum where

import React

import Blueprint.ComponentClass (breadcrumbClass)
import Blueprint.Type (ActionPropsEx, Prop)

type BreadcrumProps eff = ActionPropsEx eff
  ( href :: String
  , target :: String
  )

breadcrumb :: forall eff . Prop (BreadcrumProps eff) -> ReactElement
breadcrumb = breadcrumbClass
