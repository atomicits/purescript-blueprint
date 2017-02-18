module Blueprint.Components.Breadcrums where

import Blueprint.PropTypes


--- BreadcrumProps is extender from IAction and ILink
type BreadcrumProps = { disabled :: Boolean
                        , iconName :: String
                        , onClick :: UnknownEventType
                        , text :: String
                        , intent :: Intent
                        , className :: String
                        , href :: String
                        , target :: String
                        }
