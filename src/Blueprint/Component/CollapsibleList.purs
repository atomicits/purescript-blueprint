module Blueprint.Components.CollapsibleList where

import Blueprint.Components.Menu (MenuItemProps)
import Blueprint.Components.Popover (PopoverProps)
import Blueprint.ComponentsClasses (collapsibleListClass)
import Blueprint.PropTypes (PropsEx, Prop, UnknownJSXElementType)
import React

newtype CollapseForm = CollapseForm Int

collapseForm ::
  { start :: CollapseForm
  , end :: CollapseForm
  }
collapseForm =
  { start : CollapseForm 0
  , end : CollapseForm 1
  }

type CollapsibleListProps = CollapsibleListPropsEx ()

type CollapsibleListPropsEx r = PropsEx
  ( dropdownTarget :: UnknownJSXElementType
  , dropdownProps :: PopoverProps
  , renderVisibleItem :: MenuItemProps -> Int -> UnknownJSXElementType
  , collapseFrom :: CollapseForm
  , visibleItemClassName :: String
  , visibleItemCount :: Int
  | r
  )

collapsibleList :: Prop CollapsibleListProps -> Array ReactElement -> ReactElement
collapsibleList = createElement collapsibleListClass
