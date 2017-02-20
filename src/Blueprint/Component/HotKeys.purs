module Blueprint.Component.Hotkeys
  ( HotkeysProps
  , HotkeyProps
  , hotkey
  , hotkeys
  ) where

import React

import Control.Monad.Eff (Eff)

import Blueprint.ComponentClass (hotkeyClass, hotkeysClass)
import Blueprint.Type (Prop, PropsEx)


type HotkeysProps =  PropsEx (tabIndex :: Int)

type HotkeyProps eff a =
  { combo :: String
  , label :: String
  , global :: Boolean
  , group :: String
  , onKeyDown :: KeyboardEvent -> Eff eff a
  , onKeyUp :: KeyboardEvent -> Eff eff a
  }

hotkey :: forall eff a. Prop (HotkeyProps eff a) -> Array ReactElement -> ReactElement
hotkey = createElement hotkeyClass

hotkeys :: Prop HotkeysProps -> Array ReactElement -> ReactElement
hotkeys = createElement hotkeysClass
