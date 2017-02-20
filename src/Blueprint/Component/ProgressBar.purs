module Blueprint.Component.ProgressBar
 ( ProgressBarProps
 , progressBar
 ) where

import React (ReactElement, createElement)

import Blueprint.ComponentClass (progressBarClass)
import Blueprint.Type (Prop, PropsEx, Intent)

type ProgressBarProps = PropsEx
  ( value :: Number
  , intent :: Intent
  )

progressBar :: Prop ProgressBarProps -> Array ReactElement -> ReactElement
progressBar = createElement progressBarClass
