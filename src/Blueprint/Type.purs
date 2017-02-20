module Blueprint.Type where

import Prelude

import Blueprint.Event (EventHandler, MouseEvent)

newtype Position = Position Int

topLeft :: Position
topLeft =  Position 0

top :: Position
top =  Position 1

topRight :: Position
topRight =  Position 2

rightTop :: Position
rightTop =  Position 3

right :: Position
right =  Position 4

rightBottom :: Position
rightBottom =  Position 5

bottomRight :: Position
bottomRight =  Position 6

bottom :: Position
bottom =  Position 7

bottomLeft :: Position
bottomLeft =  Position 8

leftBottom :: Position
leftBottom =  Position 9

left :: Position
left =  Position 10

leftTop :: Position
leftTop =  Position 11


type UnknownStyleType = {}

type UnknownEventType = {}

type UnknownRefType = {}

type UnknownReactType = {}

type UnknownJSXElementType = {}

type UnknownFunctionType = {} -- () => void;

type Prop a = a -> a

class IntentEnum a where
  none :: a
  primary :: a
  success :: a
  warning :: a
  danger :: a


newtype Intent = Intent Int

instance intentInt :: IntentEnum Intent where
  none = Intent (-1)
  primary = Intent 0
  success = Intent 1
  warning = Intent 2
  danger = Intent 3


type Prpos = PropsEx ()
type PropsEx r = { className :: String | r }

type IntentProps = IntentPropsEx ()
type IntentPropsEx r = { intent :: Intent | r }

type ActionProps eff = ActionPropsEx eff ()

type ActionPropsEx eff r =
  { disabled :: Boolean
  , iconName :: String
  , onClick :: EventHandler eff (MouseEvent eff)
  , text :: String
  , intent :: Intent
  , className :: String
  | r
  }

type LinkProps = LinkPropsEx ()
type LinkPropsEx r =
  { href :: String
  , target :: String
  | r
  }

type OptionProps = OptionPropsEx ()

type OptionPropsEx r = PropsEx
  ( disabled :: Boolean
  , label :: String
  , value :: String
  |r
  )


data ComponentORString
  = String
  | UnknownJSXElementType

class AlignEnum a where
  alignRight :: a
  alignLeft  :: a


class DarkEnum a where
  dark :: a


data BooleanORArrayString = Boolean | Array String

type TetherConstraint =
  { attachment :: String
  , outOfBoundsClass :: String
  , pin :: BooleanORArrayString
  , pinnedClass :: String
  , to :: ComponentORString --- String | UnknownReactType | Array Int
  }


type Offset =
  { top :: Int
  , left :: Int
  }
