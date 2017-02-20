module Blueprint.Component.EditableText
  ( EditableTextProps
  , editableText
  ) where

import Prelude
import Blueprint.ComponentClass (editableTextClass)
import Blueprint.Event (UnitEventHandler, EventHandler)
import Blueprint.Type (Intent, Prop)
import React (ReactElement, createElement)



type EditableTextProps eff =
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
  , onCancel :: EventHandler eff String
  , onChange :: EventHandler eff String
  , onConfirm :: String -> Unit
  , onEdit :: UnitEventHandler eff
  }

editableText :: forall eff. Prop (EditableTextProps eff) -> ReactElement
editableText p = createElement editableTextClass p []
