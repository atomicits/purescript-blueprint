module Blueprint.Components.ButonGroup where


import Prelude
import React.DOM as RD
import React.DOM.Props as RP
import React (ReactElement)
import Data.Array (foldl)

newtype ButtonGroupModifiers = ButtonGroupModifiers String

buttonGroupModifiers :: { large :: ButtonGroupModifiers
                        , minimal :: ButtonGroupModifiers
                        , fill :: ButtonGroupModifiers
                        , vertical :: ButtonGroupModifiers
                        , align_left :: ButtonGroupModifiers
                        , align_right :: ButtonGroupModifiers
                        }
buttonGroupModifiers = { large : ButtonGroupModifiers "pt-large"
                       , minimal : ButtonGroupModifiers "pt-minimal"
                       , fill : ButtonGroupModifiers "pt-fill"
                       , vertical : ButtonGroupModifiers "pt-vertical"
                       , align_left : ButtonGroupModifiers "pt-align-left"
                       , align_right : ButtonGroupModifiers "pt-align-left"
                       }

buttonGroup :: ButtonGroupModifiers -> Array ReactElement -> ReactElement
buttonGroup (ButtonGroupModifiers m) c =
  RD.div [ RP.className $ "pt-button-group " <> m ] c

responsiveButtonGroup :: ButtonGroupModifiers -> Array ReactElement -> ReactElement
responsiveButtonGroup (ButtonGroupModifiers m) c =
  RD.div [ RP.className $ "pt-button-group pt-fill" <> m ] c



verticalButtonGroup :: ButtonGroupModifiers -> Array ReactElement -> ReactElement
verticalButtonGroup (ButtonGroupModifiers m) c =
  RD.div [ RP.className $ "pt-button-group pt-vertical" <> m ] c


customButtonGroup :: Array ButtonGroupModifiers -> Array ReactElement -> ReactElement
customButtonGroup ms c =
   RD.div [ RP.className klassNames ] c
   where
     klassNames = foldl strconcat "" ms
     strconcat b (ButtonGroupModifiers a) = b <> " " <> a
