module Blueprint.Components.TableHtml where

import Prelude
import React.DOM as RD
import React.DOM.Props as RP
import React (ReactElement)

newtype TableHtmlModifiers = TableHtmlModifiers String

tableHtmlModifiers :: { condensed  :: TableHtmlModifiers
                      , striped  :: TableHtmlModifiers
                      , bordered  :: TableHtmlModifiers
                      , interactive   :: TableHtmlModifiers
                      }

tableHtmlModifiers = { condensed  : TableHtmlModifiers ".pt-condensed"
                      , striped  : TableHtmlModifiers ".pt-striped"
                      , bordered  : TableHtmlModifiers ".pt-bordered"
                      , interactive : TableHtmlModifiers ".pt-interactive"
                      }



tableHtlm :: TableHtmlModifiers -> Array ReactElement -> ReactElement
tableHtlm (TableHtmlModifiers m) c =
  RD.table [ RP.className $ "pt-table " <> m ] c
