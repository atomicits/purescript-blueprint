module Blueprint.Component.Slider where

import Data.Unit (Unit)
import React (ReactElement, createElement)

import Blueprint.ComponentClass (sliderClass)
import Blueprint.Type (Prop, PropsEx)

type SliderProps = SliderPropsEx ()

type SliderPropsEx r = PropsEx
  ( disabled :: Boolean
  , labelStepSize :: Number
  , max :: Number
  , min :: Number
  , showTrackFill :: Boolean
  , stepSize :: Number
  , renderLabel :: String       --- TODO -- ((value: number) => string | JSX.Element) | boolean
  , isMoving :: Boolean
  , initialValue :: Number
  , value :: NumberRange
  , onChange ::  NumberRange -> Unit
  , onRelease :: NumberRange -> Unit
  | r
  )

type NumberRange  = Array Int -- DISCUSS: will it have a start and end? or an array of int?

slider :: Prop SliderProps -> Array ReactElement -> ReactElement
slider = createElement sliderClass
