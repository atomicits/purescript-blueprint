module Blueprint.Components.Overlay where


import Blueprint.PropTypes

type IOverLayableProps = IOverLayablePropsEx ()

type IOverLayablePropsEx r = { autoFocus :: Boolean
                             , canEscapeKeyClose :: Boolean
                             , enforceFocus :: Boolean
                             , inline :: Boolean
                             , lazy :: Boolean
                             , transitionDuration :: Int
                             , onClose :: UnknownEventType
                            | r
                            }
