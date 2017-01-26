module Blueprint.Components where

import React
import React.DOM as RD
foreign import alertClass :: forall props. ReactClass props


alert :: forall props. Array props -> Array ReactElement -> ReactElement
alert = createElement alertClass

buttonGroup :: forall props. Array props -> Array ReactElement -> ReactElement
buttonGroup = RD.div

