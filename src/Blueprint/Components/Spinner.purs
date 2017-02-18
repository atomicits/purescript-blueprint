module Blueprint.Components.Spinner where

import React (ReactElement, createElement)
import Blueprint.ComponentsClasses (spinnerClass)
import Blueprint.PropTypes (IPropsEx, Prop)


--- export interface ISpinnerProps extends IProps, IIntentProps {


type SpinnerProps  = SpinnerPropsEx ()

type SpinnerPropsEx r = IPropsEx ( value :: Number
                                 |r
                                 )

spinner :: Prop SpinnerProps -> Array ReactElement -> ReactElement
spinner = createElement spinnerClass
