module Blueprint.Component.Tag
  ( TagProps
  , tag
  ) where

import React (ReactElement, createElement)

import Blueprint.ComponentClass (tagClass)
import Blueprint.Type (Intent, Prop, PropsEx, UnknownEventType)


-- export interface ITagProps extends IProps, IIntentProps, React.HTMLProps<HTMLSpanElement> {

type TagProps = PropsEx
  ( onRemove :: UnknownEventType
  , intent :: Intent
  )

tag :: Prop TagProps -> Array ReactElement -> ReactElement
tag = createElement tagClass
