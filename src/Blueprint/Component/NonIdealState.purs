module Blueprint.Component.NonIdealState where

import Blueprint.ComponentClass (nonIdealStateClass)
import Blueprint.Type (ComponentORString, Prop, PropsEx, UnknownJSXElementType)
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
