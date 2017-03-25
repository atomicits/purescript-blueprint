module Blueprint.Component.CollapsibleList
  ( CollapseForm
  , CollapsibleListProps
  , start
  , end
  , collapsibleList
  ) where

import Control.Monad.Eff (Eff)
import React (ReactElement, createElement)

import Blueprint.Component.Menu (MenuItemProps)
import Blueprint.Component.Popover (PopoverProps)
import Blueprint.ComponentClass (collapsibleListClass)
import Blueprint.Type (Prop)

newtype CollapseForm = CollapseForm Int

start :: CollapseForm
start = CollapseForm 0

end :: CollapseForm
end = CollapseForm 1

type CollapsibleListProps eff = { className :: String
                                , dropdownTarget :: ReactElement
                                , dropdownProps :: Prop (PopoverProps eff)
                                , renderVisibleItem :: Prop (MenuItemProps eff) -> Int -> Eff eff ReactElement
                                , collapseFrom :: CollapseForm
                                , visibleItemClassName :: String
                                , visibleItemCount :: Int
                                }

collapsibleList :: forall eff. Prop (CollapsibleListProps eff) -> Array ReactElement -> ReactElement
collapsibleList = createElement collapsibleListClass
