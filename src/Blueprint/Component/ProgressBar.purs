module Blueprint.Component.ProgressBar where

import React (ReactElement, createElement)

import Blueprint.ComponentClass (progressBarClass)
import Blueprint.Type (Prop, PropsEx)

type ProgressBarProps = PropsEx
  ( value :: Number
  )

progressBar :: Prop ProgressBarProps -> Array ReactElement -> ReactElement
progressBar = createElement progressBarClass
