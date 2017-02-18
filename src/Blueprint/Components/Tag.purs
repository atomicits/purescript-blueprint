module Blueprint.Components.Tag where

import React (ReactElement, createElement)
import Blueprint.ComponentsClasses (tagClass)
import Blueprint.PropTypes

-- export interface ITagProps extends IProps, IIntentProps, React.HTMLProps<HTMLSpanElement> {

type TagProps = TagPropsEx ()

type TagPropsEx r = IPropsEx ( onRemove :: UnknownEventType
                             |r
                             )


tag :: Prop TagProps -> Array ReactElement -> ReactElement
tag = createElement tagClass
