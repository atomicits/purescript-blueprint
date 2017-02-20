module Blueprint.Component.Hotkeys where

import Blueprint.ComponentClass (hotkeyClass, hotkeysClass)
import Blueprint.Type (Prop, PropsEx, UnknownEventType)
import React

-- DISCUSS: Do we need this to be extensible?
type HotkeysProps = HotkeysPropsEx ()

type HotkeysPropsEx r = PropsEx
  ( tabIndex :: Int
  | r
  )

type HotkeyProps =
  { combo :: String
  , label :: String
  , global :: Boolean
  , group :: String
  , onKeyDown :: UnknownEventType
  , onKeyUp :: UnknownEventType
  }

hotkey :: Prop HotkeyProps -> Array ReactElement -> ReactElement
hotkey = createElement hotkeyClass

hotkeys :: Prop HotkeysProps -> Array ReactElement -> ReactElement
hotkeys = createElement hotkeysClass
