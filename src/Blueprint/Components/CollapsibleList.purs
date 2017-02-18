module Blueprint.Components.CollapsibleList where

import React
import Blueprint.ComponentsClasses
import Blueprint.Components.Menu
import Blueprint.PropTypes
import Blueprint.Components.Popover


newtype CollapseForm = CollapseForm Int

collapseForm  :: { start :: CollapseForm, end :: CollapseForm }
collapseForm = { start : CollapseForm 0, end : CollapseForm 1}

type CollapsibleListProps = CollapsibleListPropsEx ()

type CollapsibleListPropsEx r = IPropsEx ( dropdownTarget :: UnknownJSXElementType
                                         , dropdownProps :: IPopoverProps
                                         , renderVisibleItem :: MenuItemProps -> Int -> UnknownJSXElementType
                                         , collapseFrom :: CollapseFrom
                                         , visibleItemClassName :: String
                                         , visibleItemCount :: Int
                                         | r)


collapsibleList :: Prop CollapsibleListProps -> Array ReactElement -> ReactEleme
collapsibleList = createElement collapsibleListClass
