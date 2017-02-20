module Blueprint.Component.Cards where


import Prelude (($), (<>))

import React
import React.DOM as RD
import React.DOM.Props as RP

newtype CardModifier =  CardModifier String

cardModifiers ::
  { ground_floor :: CardModifier
  , first        :: CardModifier
  , second       :: CardModifier
  , third        :: CardModifier
  , fourth       :: CardModifier
  }
cardModifiers =
  { ground_floor : CardModifier "pt-elevation-0"
  , first        : CardModifier "pt-elevation-1"
  , second       : CardModifier "pt-elevation-2"
  , third        : CardModifier "pt-elevation-3"
  , fourth       : CardModifier "pt-elevation-4"
  }

card :: CardModifier -> Array ReactElement -> ReactElement
card (CardModifier m) c =
  RD.div [ RP.className $ "pt-card " <> m ] c

interactiveCards :: CardModifier -> Array ReactElement -> ReactElement
interactiveCards (CardModifier m) c =
  RD.div [ RP.className $ "pt-card pt-interactive " <> m ] c
