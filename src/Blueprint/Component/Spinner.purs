module Blueprint.Component.Spinner
  ( SpinnerProps
  , spinner
  ) where

import React (ReactElement, createElement)

import Blueprint.ComponentClass (spinnerClass)
import Blueprint.Type (Intent, Prop, PropsEx)

type SpinnerProps = PropsEx
  ( value :: Number
  , intent :: Intent
  )

spinner :: Prop SpinnerProps -> Array ReactElement -> ReactElement
spinner = createElement spinnerClass
