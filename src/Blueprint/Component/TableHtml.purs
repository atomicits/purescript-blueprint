module Blueprint.Component.TableHtml where

import Prelude

import React.DOM as RD
import React.DOM.Props as RP
import React (ReactElement)

newtype TableHtmlModifier = TableHtmlModifier String

tableHtmlModifiers ::
  { condensed  :: TableHtmlModifier
  , striped  :: TableHtmlModifier
  , bordered  :: TableHtmlModifier
  , interactive   :: TableHtmlModifier
  }
tableHtmlModifiers =
  { condensed  : TableHtmlModifier ".pt-condensed"
  , striped  : TableHtmlModifier ".pt-striped"
  , bordered  : TableHtmlModifier ".pt-bordered"
  , interactive : TableHtmlModifier ".pt-interactive"
  }

tableHtml :: TableHtmlModifier -> Array ReactElement -> ReactElement
tableHtml (TableHtmlModifier m) c =
  RD.table [ RP.className $ "pt-table " <> m ] c
