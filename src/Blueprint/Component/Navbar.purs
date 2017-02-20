module Blueprint.Component.Navbar where

import Prelude

import React (ReactElement)
import React.DOM as RD
import React.DOM.Props as RP

newtype NavbarModifier = NavbarModifier String

newtype NavbarGroupModifier = NavbarGroupModifier String

navbarModifier ::
  { dark  :: NavbarModifier
  , default :: NavbarModifier -- TODO: lets avoid keywords
  }
navbarModifier =
  { dark  : NavbarModifier "pt-dark"
  , default : NavbarModifier "" -- TODO: avoid keywords
  }

navbarGroupModifier ::
  { alignRight  :: NavbarGroupModifier
  , alignLeft :: NavbarGroupModifier
  }
navbarGroupModifier =
  { alignRight  : NavbarGroupModifier "pt-align-right"
  , alignLeft : NavbarGroupModifier "pt-align-left"
  }

navBar :: NavbarModifier -> Array ReactElement -> ReactElement
navBar (NavbarModifier m) c = RD.nav [RP.className $ "pt-navBar " <> m ] c

fixedNavBar :: NavbarModifier -> Array ReactElement -> ReactElement
fixedNavBar (NavbarModifier m) c = RD.nav [RP.className $ "pt-navBar pt-fixed-top " <> m ] c

navBarGroup :: NavbarGroupModifier -> Array ReactElement -> ReactElement
navBarGroup (NavbarGroupModifier m) c = RD.nav [RP.className $ "pt-navbar-group " <> m ] c

navBarDivider ::  ReactElement
navBarDivider = RD.span [ RP.className "pt-navbar-divider"] []
