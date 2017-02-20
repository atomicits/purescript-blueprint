module Blueprint.Component.Callout
  ( CalloutModifier
  , withIcon
  , callout
  ) where


import Prelude
import React.DOM as RD
import React.DOM.Props as RP
import React (ReactElement)

import Blueprint.Type (class IntentEnum)


newtype CalloutModifier = CalloutModifier String

instance calloutIntent :: IntentEnum CalloutModifier where
   primary  =  CalloutModifier "pt-intent-primary"
   success  =  CalloutModifier "pt-intent-success"
   warning  =  CalloutModifier "pt-intent-warning"
   danger   =  CalloutModifier "pt-intent-danger"
   none     =  CalloutModifier ""


withIcon :: CalloutModifier
withIcon =  CalloutModifier "pt-icon-info-sign"


callout :: CalloutModifier -> Array ReactElement -> ReactElement
callout (CalloutModifier m) c =
  RD.div [ RP.className $ "pt-callout " <> m ] c
