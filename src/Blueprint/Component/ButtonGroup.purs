module Blueprint.Component.ButtonGroup
 ( ButtonGroupModifier
 , large
 , minimal
 , fill
 , vertical
 , buttonGroup
 , buttonGroupVertical
 , buttonGroupResponsive
 , buttonGroupCustom
 ) where

import Prelude
import React.DOM as RD
import React.DOM.Props as RP
import Blueprint.Type (class AlignEnum)
import Data.Array (foldl)
import React (ReactElement)


newtype ButtonGroupModifier = ButtonGroupModifier String

instance buttonGroupAlign :: AlignEnum ButtonGroupModifier where
  alignLeft = ButtonGroupModifier "pt-align-left"
  alignRight = ButtonGroupModifier "pt-align-left"

large :: ButtonGroupModifier
large = ButtonGroupModifier "pt-large"

minimal :: ButtonGroupModifier
minimal = ButtonGroupModifier "pt-minimal"

fill :: ButtonGroupModifier
fill = ButtonGroupModifier "pt-fill"

vertical :: ButtonGroupModifier
vertical = ButtonGroupModifier "pt-vertical"


buttonGroup :: ButtonGroupModifier -> Array ReactElement -> ReactElement
buttonGroup (ButtonGroupModifier m) c =
  RD.div [ RP.className $ "pt-button-group " <> m ] c

buttonGroupResponsive :: ButtonGroupModifier -> Array ReactElement -> ReactElement
buttonGroupResponsive (ButtonGroupModifier m) c =
  RD.div [ RP.className $ "pt-button-group pt-fill" <> m ] c

buttonGroupVertical :: ButtonGroupModifier -> Array ReactElement -> ReactElement
buttonGroupVertical (ButtonGroupModifier m) c =
  RD.div [ RP.className $ "pt-button-group pt-vertical" <> m ] c

buttonGroupCustom :: Array ButtonGroupModifier -> Array ReactElement -> ReactElement
buttonGroupCustom ms c =
   RD.div [ RP.className klassNames ] c
   where
     klassNames = foldl strconcat "" ms
     strconcat b (ButtonGroupModifier a) = b <> " " <> a
