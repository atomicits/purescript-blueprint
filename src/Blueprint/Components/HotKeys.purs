module Blueprint.Ccomponents.Hotkeys where

import Blueprint.PropTypes
import Blueprint.ComponentsClasses
import React

type IHotkeysProps = IHotkeysPropsEx ()
type IHotkeysPropsEx r = IPropsEx (tabIndex :: Int | r)

type IHotkeyProps = { combo :: String

                    , label :: String
                    , global :: Boolean
                    , group :: String
                    , onKeyDown :: UnknownEventType
                    , onKeyUp :: UnknownEventType
                    }

hotkey :: Prop IHotkeyProps -> Array ReactElement -> ReactElement
hotkey = createElement hotkeyClass


hotkeys :: Prop IHotkeysProps -> Array ReactElement -> ReactElement
hotkeys = createElement hotkeysClass
