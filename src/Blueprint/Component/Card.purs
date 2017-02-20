module Blueprint.Component.Card
  ( CardModifier
  , first
  , second
  , third
  , fourth
  , card
  , interactiveCard
  ) where

import Prelude (($), (<>))

import React (ReactElement)
import React.DOM as RD
import React.DOM.Props as RP

newtype CardModifier =  CardModifier String

ground_floor :: CardModifier
ground_floor = CardModifier "pt-elevation-0"

first :: CardModifier
first  = CardModifier "pt-elevation-1"

second :: CardModifier
second = CardModifier "pt-elevation-2"

third :: CardModifier
third  = CardModifier "pt-elevation-3"

fourth :: CardModifier
fourth = CardModifier "pt-elevation-4"

card :: CardModifier -> Array ReactElement -> ReactElement
card (CardModifier m) c =
  RD.div [ RP.className $ "pt-card " <> m ] c

interactiveCard :: CardModifier -> Array ReactElement -> ReactElement
interactiveCard (CardModifier m) c =
  RD.div [ RP.className $ "pt-card pt-interactive " <> m ] c
