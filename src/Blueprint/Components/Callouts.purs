module Blueprint.Components.Callouts where

import Prelude
import React.DOM as RD
import React.DOM.Props as RP
import React (ReactElement)

newtype CalloutModifiers = CalloutModifiers String

calloutModifiers :: { primary  :: CalloutModifiers
                    , success  :: CalloutModifiers
                    , warning  :: CalloutModifiers
                    , danger   :: CalloutModifiers
                    , withIcon :: CalloutModifiers
                    }

calloutModifiers = { primary  :  CalloutModifiers "pt-intent-primary"
                   , success  :  CalloutModifiers "pt-intent-success"
                   , warning  :  CalloutModifiers "pt-intent-warning"
                   , danger   :  CalloutModifiers "pt-intent-danger"
                   , withIcon :  CalloutModifiers "pt-icon-info-sign"
                   }


callout :: CalloutModifiers -> Array ReactElement -> ReactElement
callout (CalloutModifiers m) c =
  RD.div [ RP.className $ "pt-callout " <> m ] c
