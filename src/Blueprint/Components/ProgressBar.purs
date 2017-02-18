module Blueprint.Components. ProgressBar where

import Prelude
import React (ReactElement, createElement)
import Blueprint.PropTypes (IPropsEx, Prop)
import Blueprint.ComponentsClasses (progressBarClass)


type ProgressBarProps = ProgressBarPropsEx ()

type ProgressBarPropsEx r = IPropsEx ( value :: Number|r)


progressBar :: Prop ProgressBarProps -> Array ReactElement -> ReactElement
progressBar = createElement progressBarClass
