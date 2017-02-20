module Blueprint.Event where

import Prelude (Unit)

import Data.Function.Eff (EffFn1, EffFn2)

type EventHandler eff a = EffFn1 eff a Unit

type EventHandler2 eff a b = EffFn2 eff a b Unit

type UnitEventHandler eff = EffFn1 eff Unit Unit
