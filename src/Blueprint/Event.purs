module Blueprint.Event where

import Control.Monad.Eff (Eff)
import Data.Date (Date)
import Data.Function.Eff (EffFn1, EffFn2)
import Prelude (Unit)


foreign import data EventTarget :: *
foreign import data Event :: *

type SyntheticEvent eff = SyntheticEventEx eff ()


type SyntheticEventEx eff r  =
  { bubbles :: Boolean
  , currentTarget :: EventTarget
  , cancelable:: Boolean
  , defaultPrevented:: Boolean
  , eventPhase:: Int
  , isTrusted:: Boolean
  , nativeEvent:: Event
  , preventDefault :: UnitEventHandler eff
  , isDefaultPrevented :: Boolean
  , stopPropagation :: UnitEventHandler eff
  , isPropagationStopped :: Eff eff Boolean
  , persist :: UnitEventHandler eff
  , target:: EventTarget
  , timeStamp:: Date
  , type :: String
  | r
  }


type KeyboardEvent eff = SyntheticEventEx eff
  ( altKey :: Boolean
  , charCode :: Int
  , ctrlKey :: Boolean
  , getModifierState :: String -> Eff eff Boolean
  , key :: String
  , keyCode :: Int
  , locale :: String
  , location :: Int
  , metaKey :: Boolean
  , repeat :: Boolean
  , shiftKey :: Boolean
  , which :: Int
  )


type MouseEvent eff = SyntheticEventEx eff
 ( altKey :: Boolean
 , button :: Int
 , buttons :: Int
 , clientX :: Int
 , clientY :: Int
 , ctrlKey :: Boolean
 , getModifierState :: String -> Eff eff Boolean
 , metaKey :: Boolean
 , pageX :: Int
 , pageY :: Int
 , relatedTarget :: EventTarget
 , screenX :: Int
 , screenY :: Int
 , shiftKey :: Boolean
 )




type EventHandler eff a = EffFn1 eff a Unit

type EventHandler2 eff a b = EffFn2 eff a b Unit

type UnitEventHandler eff = EffFn1 eff Unit Unit
