module Blueprint.Component.NonIdealState
  ( NonIdealStateProps
  , nonIdealState
  ) where

import React

import Blueprint.ComponentClass (nonIdealStateClass)
import Blueprint.Type (ComponentORString, Prop, PropsEx, UnknownJSXElementType)


type NonIdealStateProps =  PropsEx
  ( action :: UnknownJSXElementType
  , description :: ComponentORString
  , title :: String
  , visual :: ComponentORString
  )

nonIdealState :: Prop NonIdealStateProps -> ReactElement
nonIdealState p = createElement nonIdealStateClass p []
