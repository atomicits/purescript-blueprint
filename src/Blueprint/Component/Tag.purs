module Blueprint.Component.Tag
  ( TagProps
  , tag
  ) where

import React (ReactElement, createElement)

import Blueprint.ComponentClass (tagClass)
import Blueprint.Event (HTMLElement)
import Blueprint.Type (Intent, Prop, PropsEx, UnknownEventType)

type TagProps = PropsEx
  ( onRemove :: UnknownEventType
  , htmlElement :: HTMLElement
  , intent :: Intent
  )


tag :: Prop TagProps -> Array ReactElement -> ReactElement
tag = createElement tagClass
