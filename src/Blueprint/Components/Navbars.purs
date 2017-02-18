module Blueprint.Components.Navbars where

import Prelude
import React.DOM as RD
import React.DOM.Props as RP
import React (ReactElement)

newtype NavbarsModifiers = NavbarsModifiers String
newtype NavbarGroupModifiers = NavbarGroupModifiers String

navbarModifiers :: { dark  :: NavbarsModifiers
                   , default :: NavbarsModifiers
                   }

navbarModifiers = { dark  : NavbarsModifiers "pt-dark"
                  , default : NavbarsModifiers ""
                  }


navbarGroupModifiers :: { align_right  :: NavbarGroupModifiers
                   , align_left :: NavbarGroupModifiers
                   }

navbarGroupModifiers = { align_right  : NavbarGroupModifiers "pt-align-right"
                  , align_left : NavbarGroupModifiers  "pt-align-left"
                  }


navBar :: NavbarsModifiers -> Array ReactElement -> ReactElement
navBar (NavbarsModifiers m) c = RD.nav [RP.className $ "pt-navBar " <> m ] c


fixedNavBar :: NavbarsModifiers -> Array ReactElement -> ReactElement
fixedNavBar (NavbarsModifiers m) c = RD.nav [RP.className $ "pt-navBar pt-fixed-top " <> m ] c



navBarGroup :: NavbarGroupModifiers -> Array ReactElement -> ReactElement
navBarGroup (NavbarGroupModifiers m) c = RD.nav [RP.className $ "pt-navbar-group " <> m ] c


navBarDivider ::  ReactElement
navBarDivider = RD.span [ RP.className "pt-navbar-divider"] []
