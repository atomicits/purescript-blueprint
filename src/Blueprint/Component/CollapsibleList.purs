module Blueprint.Component.CollapsibleList
  ( CollapseForm
  , CollapsibleListProps
  , start
  , end
  , collapsibleList
  ) where

import React
import Control.Monad.Eff (Eff)


import Blueprint.Component.Menu (MenuItemProps)
import Blueprint.Component.Popover (PopoverProps)
import Blueprint.ComponentClass (collapsibleListClass)
import Blueprint.Type (Prop, UnknownJSXElementType)

newtype CollapseForm = CollapseForm Int

start :: CollapseForm
start = CollapseForm 0

end :: CollapseForm
end = CollapseForm 1

type CollapsibleListProps eff = { className :: String
                                , dropdownTarget :: UnknownJSXElementType
                                , dropdownProps :: Prop (PopoverProps eff)
                                , renderVisibleItem :: Prop (MenuItemProps eff) -> Int -> Eff eff UnknownJSXElementType
                                , collapseFrom :: CollapseForm
                                , visibleItemClassName :: String
                                , visibleItemCount :: Int
                                }

collapsibleList :: forall eff. Prop (CollapsibleListProps eff) -> Array ReactElement -> ReactElement
collapsibleList = createElement collapsibleListClass
