module Blueprint.Component.EditableText where

import Prelude

import Blueprint.ComponentClass (editableTextClass)
import Blueprint.Type (Intent, Prop, UnknownEventType)
import React (ReactElement, createElement)

type EditableTextProps =
  { className :: String
  , intent :: Intent
  , confirmOnEnterKey :: Boolean
  , defaultValue :: String
  , disabled :: Boolean
  , isEditing :: Boolean
  , maxLength :: Int
  , minWidth :: Int
  , multiline :: Boolean
  , maxLines :: Int
  , minLines :: Int
  , placeholder :: String
  , selectAllOnFocus :: Boolean
  , value :: String
  , onCancel :: String -> Unit
  , onChange :: String -> Unit
  , onConfirm :: String -> Unit
  , onEdit :: UnknownEventType
  }

editableText :: Prop EditableTextProps -> ReactElement
editableText p = createElement editableTextClass p []
