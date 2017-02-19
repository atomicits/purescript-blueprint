module Blueprint.Component.Breadcrum where

import Blueprint.Type

-- DISCUSS: What should the module name be?
--- BreadcrumProps is extender from IAction and ILink
type BreadcrumProps =
  { disabled :: Boolean
  , iconName :: String
  , onClick :: UnknownEventType
  , text :: String
  , intent :: Intent
  , className :: String
  , href :: String
  , target :: String
  }
