module Blueprint.Components.Navbars where

import Prelude

import React (ReactElement)
import React.DOM as RD
import React.DOM.Props as RP

newtype NavbarModifier = NavbarModifier String

newtype NavbarGroupModifier = NavbarGroupModifier String

navbarModifiers ::
  { dark  :: NavbarModifier
  , default :: NavbarModifier -- TODO: lets avoid keywords
  }
navbarModifiers =
  { dark  : NavbarModifier "pt-dark"
  , default : NavbarModifier "" -- TODO: avoid keywords
  }

navbarGroupModifiers ::
  { alignRight  :: NavbarGroupModifier
  , alignLeft :: NavbarGroupModifier
  }
navbarGroupModifiers =
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
