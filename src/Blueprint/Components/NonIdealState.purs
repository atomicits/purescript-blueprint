module Blueprint.Components.NonIdealState where

import Blueprint.PropTypes
import Blueprint.ComponentsClasses
import React


type INonIdealStateProps = INonIdealStatePropsEx ()

type INonIdealStatePropsEx r = IPropsEx ( action :: UnknownJSXElementType
                                        , description :: ComponentORString
                                        , title :: String
                                        , visual :: ComponentORString
                                        |r
                                        )

nonIdealState :: Prop INonIdealStateProps -> ReactElement
nonIdealState p = createElement nonIdealStateClass p []
