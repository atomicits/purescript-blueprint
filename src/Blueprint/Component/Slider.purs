module Blueprint.Component.Slider
  ( SliderProps
  , SliderPropsEx
  , NumberRange
  , slider
  , RenderLabel
  , CoreSliderProps
  , CoreSliderPropsEx
  ) where

import Prelude (Unit
               )
import React (ReactElement, createElement)

import Blueprint.ComponentClass (sliderClass)
import Blueprint.Event (EventHandler)
import Blueprint.Type (ComponentORString, Prop, PropsEx)

type NumberToComponentORString = (Number -> ComponentORString)

data RenderLabel = NumberToComponentORString | Boolean

type NumberRange = Array Int

type SliderProps eff = SliderPropsEx eff ()

type SliderPropsEx eff  r = CoreSliderPropsEx
  ( initialValue :: Number
  , value :: NumberRange
  , onChange :: EventHandler eff Unit
  , onRelease :: NumberRange -> Unit
  | r
  )

type CoreSliderProps = CoreSliderPropsEx ()

type CoreSliderPropsEx r = PropsEx
  ( disabled :: Boolean
  , labelStepSize :: Number
  , max :: Number
  , min :: Number
  , showTrackFill :: Boolean
  , stepSize :: Number
  , renderLabel :: RenderLabel
  , tickSize :: Number
  |r
  )


slider :: forall eff. Prop (SliderProps eff) -> Array ReactElement -> ReactElement
slider = createElement sliderClass
