module Blueprint.Components.Slider where

import React (ReactElement, createElement)
import Blueprint.ComponentsClasses (sliderClass)
import Blueprint.PropTypes (IPropsEx, Prop)
import Prelude


type SliderProps = SliderPropsEx ()

type SliderPropsEx r = IPropsEx ( disabled :: Boolean
                                , labelStepSize :: Number
                                , max :: Number
                                , min :: Number
                                , showTrackFill :: Boolean
                                , stepSize :: Number
                                , renderLabel :: String             --- TODO -- ((value: number) => string | JSX.Element) | boolean
                                , isMoving :: Boolean
                                , initialValue :: Number
                                , value :: NumberRange
                                , onChange ::  Unit               --- TODO -- (value: NumberRange): void;
                                , onRelease :: Unit               --- TODO -- (value: NumberRange): void;
                                | r
                                )

type NumberRange  = Array Int



slider :: Prop SliderProps -> Array ReactElement -> ReactElement
slider = createElement sliderClass
