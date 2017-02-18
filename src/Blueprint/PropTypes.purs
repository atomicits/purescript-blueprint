module Blueprint.PropTypes where

import Prelude (negate)

type UnknownStyleType = {}

type UnknownEventType = {}

type UnknownRefType = {}

type UnknownReactType = {}

type UnknownJSXElementType = {}

type UnknownFunctionType = {} -- () => void;


type Prop a = a -> a

newtype Intent = Intent Int

intent :: { none    :: Intent
          , primary :: Intent
          , success :: Intent
          , warning :: Intent
          , danger  :: Intent
          }
intent = { none    : Intent (-1)
         , primary : Intent 0
         , success : Intent 1
         , warning : Intent 2
         , danger  : Intent 3
         }

type IPrpos r = IPropsEx ()

type IPropsEx r = { className :: String | r }

type IIntentProps = IIntentPropsEx ()


type IIntentPropsEx r = { intent :: Intent | r }


type IActionProps = IActionPropsEx ()
type IActionPropsEx r = { disabled :: Boolean
                        , iconName :: String
                        , onClick :: UnknownEventType
                        , text :: String
                        , intent :: Intent
                        , className :: String
                        | r
                        }

type ILinkProps = ILinkPropsEx ()

type ILinkPropsEx r = { href :: String
                      , target :: String
                      | r
                      }


data ComponentORString = String | UnknownJSXElementType


type ITetherConstraint = { attachment :: String
                         , outOfBoundsClass :: String
                         , pin :: ComponentORString -- Boolean | Array String
                         , pinnedClass :: String
                         , to :: ComponentORString --- String | UnknownReactType | Array Int
                         }
