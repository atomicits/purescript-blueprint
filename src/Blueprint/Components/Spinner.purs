module Blueprint.Components.Spinner where

import Blueprint.ComponentsClasses (spinnerClass)
import Blueprint.PropTypes (PropsEx, Prop)
import React (ReactElement, createElement)

--- export interface ISpinnerProps extends IProps, IIntentProps {
type SpinnerProps  = SpinnerPropsEx ()

type SpinnerPropsEx r = PropsEx
  ( value :: Number
  | r
  )

spinner :: Prop SpinnerProps -> Array ReactElement -> ReactElement
spinner = createElement spinnerClass
