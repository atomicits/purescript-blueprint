module Blueprint.Component.Callout where

import Prelude

import React (ReactElement)
import React.DOM as RD
import React.DOM.Props as RP

newtype CalloutModifier = CalloutModifier String

-- DISCUSS: record access? or direct primary? using Enum ClassTypes?
calloutModifier ::
  { primary  :: CalloutModifier
  , success  :: CalloutModifier
  , warning  :: CalloutModifier
  , danger   :: CalloutModifier
  , withIcon :: CalloutModifier
  }
calloutModifier =
  { primary  :  CalloutModifier "pt-intent-primary"
  , success  :  CalloutModifier "pt-intent-success"
  , warning  :  CalloutModifier "pt-intent-warning"
  , danger   :  CalloutModifier "pt-intent-danger"
  , withIcon :  CalloutModifier "pt-icon-info-sign"
  }

callout :: CalloutModifier -> Array ReactElement -> ReactElement
callout (CalloutModifier m) c =
  RD.div [ RP.className $ "pt-callout " <> m ] c
