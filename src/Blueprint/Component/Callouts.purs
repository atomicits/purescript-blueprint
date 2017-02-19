module Blueprint.Components.Callouts where

import Prelude
import React.DOM as RD
import React.DOM.Props as RP
import React (ReactElement)

newtype CalloutModifier = CalloutModifier String

-- DISCUSS: record access? or direct primary? using Enum ClassTypes?
calloutModifiers ::
  { primary  :: CalloutModifier
  , success  :: CalloutModifier
  , warning  :: CalloutModifier
  , danger   :: CalloutModifier
  , withIcon :: CalloutModifier
  }
calloutModifiers =
  { primary  :  CalloutModifier "pt-intent-primary"
  , success  :  CalloutModifier "pt-intent-success"
  , warning  :  CalloutModifier "pt-intent-warning"
  , danger   :  CalloutModifier "pt-intent-danger"
  , withIcon :  CalloutModifier "pt-icon-info-sign"
  }

callout :: CalloutModifier -> Array ReactElement -> ReactElement
callout (CalloutModifier m) c =
  RD.div [ RP.className $ "pt-callout " <> m ] c
