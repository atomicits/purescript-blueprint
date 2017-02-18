module Blueprint.Components.Cards where

import Prelude
import React (ReactElement)
import React.DOM as RD
import React.DOM.Props as RP


newtype CardModifiers =  CardModifiers String


cardModifiers :: { ground_floor :: CardModifiers
                 , first        :: CardModifiers
                 , second       :: CardModifiers
                 , third        :: CardModifiers
                 , fourth       :: CardModifiers
                 }
cardModifiers =  { ground_floor : CardModifiers "pt-elevation-0"
                 , first        : CardModifiers "pt-elevation-1"
                 , second       : CardModifiers "pt-elevation-2"
                 , third        : CardModifiers "pt-elevation-3"
                 , fourth       : CardModifiers "pt-elevation-4"
                 }

card :: CardModifiers -> Array ReactElement -> ReactElement
card (CardModifiers m) c = RD.div [ RP.className $ "pt-card " <> m ] c

interactiveCards :: CardModifiers -> Array ReactElement -> ReactElement
interactiveCards (CardModifiers m) c = RD.div [ RP.className $ "pt-card pt-interactive " <> m ] c
