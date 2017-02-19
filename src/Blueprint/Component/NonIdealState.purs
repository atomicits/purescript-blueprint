module Blueprint.Components.NonIdealState where

import Blueprint.ComponentsClasses (nonIdealStateClass)
import Blueprint.PropTypes (ComponentORString, Prop, PropsEx, UnknownJSXElementType)
import React

type NonIdealStateProps = NonIdealStatePropsEx ()

type NonIdealStatePropsEx r = PropsEx
  ( action :: UnknownJSXElementType
  , description :: ComponentORString
  , title :: String
  , visual :: ComponentORString
  | r
  )

nonIdealState :: Prop NonIdealStateProps -> ReactElement
nonIdealState p = createElement nonIdealStateClass p []
