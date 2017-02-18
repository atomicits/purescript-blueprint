module Blueprint.Components.CollapsibleList where

import React
import Blueprint.ComponentsClasses (collapsibleListClass)
import Blueprint.Components.Menu (IMenuItemProps)
import Blueprint.PropTypes (IPropsEx, Prop, UnknownJSXElementType)
import Blueprint.Components.Popover (IPopoverProps)

newtype CollapseForm = CollapseForm Int

collapseForm  :: { start :: CollapseForm, end :: CollapseForm }
collapseForm = { start : CollapseForm 0, end : CollapseForm 1}

type CollapsibleListProps = CollapsibleListPropsEx ()

type CollapsibleListPropsEx r = IPropsEx ( dropdownTarget :: UnknownJSXElementType
                                         , dropdownProps :: IPopoverProps
                                         , renderVisibleItem :: IMenuItemProps -> Int -> UnknownJSXElementType
                                         , collapseFrom :: CollapseForm
                                         , visibleItemClassName :: String
                                         , visibleItemCount :: Int
                                         | r)


collapsibleList :: Prop CollapsibleListProps -> Array ReactElement -> ReactElement
collapsibleList = createElement collapsibleListClass
