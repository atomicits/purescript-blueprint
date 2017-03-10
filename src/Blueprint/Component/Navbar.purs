module Blueprint.Component.Navbar
  ( NavbarModifier
  , NavbarGroupModifier
  , navBar
  , navBarFixed
  , navBarGroup
  , navBarDivider
  ) where

import Prelude

import React (ReactElement)
import React.DOM as RD
import React.DOM.Props as RP

import Blueprint.Type (class AlignEnum, class DarkEnum)


newtype NavbarModifier = NavbarModifier String

instance navBarDark :: DarkEnum NavbarModifier where
  dark = NavbarModifier "pt-dark"

newtype NavbarGroupModifier = NavbarGroupModifier String

instance navbarGroupAlign :: AlignEnum NavbarGroupModifier where
   alignRight = NavbarGroupModifier "pt-align-right"
   alignLeft  = NavbarGroupModifier "pt-align-left"

navBar :: NavbarModifier -> Array ReactElement -> ReactElement
navBar (NavbarModifier m) c = RD.nav [RP.className $ "pt-navBar " <> m ] c

navBarFixed :: NavbarModifier -> Array ReactElement -> ReactElement
navBarFixed (NavbarModifier m) c = RD.nav [RP.className $ "pt-navBar pt-fixed-top " <> m ] c

navBarGroup :: NavbarGroupModifier -> Array ReactElement -> ReactElement
navBarGroup (NavbarGroupModifier m) c = RD.nav [RP.className $ "pt-navbar-group " <> m ] c

navBarDivider ::  ReactElement
navBarDivider = RD.span [ RP.className "pt-navbar-divider"] []
