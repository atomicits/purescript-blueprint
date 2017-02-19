module Blueprint.Components.Tag where

import Blueprint.ComponentsClasses (tagClass)
import Blueprint.PropTypes
import React (ReactElement, createElement)

-- export interface ITagProps extends IProps, IIntentProps, React.HTMLProps<HTMLSpanElement> {

type TagProps = TagPropsEx ()

type TagPropsEx r = PropsEx
  ( onRemove :: UnknownEventType
  | r
  )

tag :: Prop TagProps -> Array ReactElement -> ReactElement
tag = createElement tagClass
