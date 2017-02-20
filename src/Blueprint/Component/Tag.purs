module Blueprint.Component.Tag where

import React (ReactElement, createElement)

import Blueprint.ComponentClass (tagClass)
import Blueprint.Type (Prop, PropsEx, UnknownEventType)

-- export interface ITagProps extends IProps, IIntentProps, React.HTMLProps<HTMLSpanElement> {

type TagProps  =  PropsEx
  (onRemove :: UnknownEventType)

tag :: Prop TagProps -> Array ReactElement -> ReactElement
tag = createElement tagClass
