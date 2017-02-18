module Blueprint.Components.ButonGroup where


import Prelude

import Data.Array (foldl)
import React (ReactElement)
import React.DOM as RD
import React.DOM.Props as RP

newtype ButtonGroupModifier = ButtonGroupModifier String

-- DISCUSS: should we use large, minimal,... directly? instead of record access?
buttonGroupModifiers ::
  { large :: ButtonGroupModifier
  , minimal :: ButtonGroupModifier
  , fill :: ButtonGroupModifier
  , vertical :: ButtonGroupModifier
  , alignLeft :: ButtonGroupModifier
  , alignRight :: ButtonGroupModifier
  }
buttonGroupModifiers =
  { large : ButtonGroupModifier "pt-large"
  , minimal : ButtonGroupModifier "pt-minimal"
  , fill : ButtonGroupModifier "pt-fill"
  , vertical : ButtonGroupModifier "pt-vertical"
  , alignLeft : ButtonGroupModifier "pt-align-left"
  , alignRight : ButtonGroupModifier "pt-align-left"
  }

-- DISCUSS: why don't we have a single button group function and enable us to use multiple modifiers?
buttonGroup :: ButtonGroupModifier -> Array ReactElement -> ReactElement
buttonGroup (ButtonGroupModifier m) c =
  RD.div [ RP.className $ "pt-button-group " <> m ] c

responsiveButtonGroup :: ButtonGroupModifier -> Array ReactElement -> ReactElement
responsiveButtonGroup (ButtonGroupModifier m) c =
  RD.div [ RP.className $ "pt-button-group pt-fill" <> m ] c

verticalButtonGroup :: ButtonGroupModifier -> Array ReactElement -> ReactElement
verticalButtonGroup (ButtonGroupModifier m) c =
  RD.div [ RP.className $ "pt-button-group pt-vertical" <> m ] c


customButtonGroup :: Array ButtonGroupModifier -> Array ReactElement -> ReactElement
customButtonGroup ms c =
   RD.div [ RP.className klassNames ] c
   where
     klassNames = foldl strconcat "" ms
     strconcat b (ButtonGroupModifier a) = b <> " " <> a
