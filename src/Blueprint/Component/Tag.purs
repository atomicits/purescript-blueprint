module Blueprint.Component.Tag where

import Blueprint.ComponentClass (tagClass)
import Blueprint.Type
import React (ReactElement, createElement)

-- export interface ITagProps extends IProps, IIntentProps, React.HTMLProps<HTMLSpanElement> {

type TagProps = TagPropsEx ()

type TagPropsEx r = PropsEx
  ( onRemove :: UnknownEventType
  | r
  )

tag :: Prop TagProps -> Array ReactElement -> ReactElement
tag = createElement tagClass
