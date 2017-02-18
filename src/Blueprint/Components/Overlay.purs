module Blueprint.Components.Overlay where


import Blueprint.PropTypes
import React (ReactElement, createElement)
import Blueprint.ComponentsClasses (overlayClass)

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

type IOverlayProps = IOverlayPropsEx ()

type IOverlayPropsEx r =  IOverLayablePropsEx ( className :: String
                         , backdropClassName :: String
                         , backdropProps :: UnknownJSXElementType
                         , canOutsideClickClose :: Boolean
                         , hasBackdrop :: Boolean
                         , didOpen :: UnknownFunctionType -- () => any;
                         , isOpen :: Boolean
                         , transitionName :: String
                         | r
                         )


overlay :: Prop IOverlayProps -> Array ReactElement -> ReactElement
overlay = createElement overlayClass
