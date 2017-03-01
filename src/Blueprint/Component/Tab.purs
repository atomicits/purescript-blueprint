module Blueprint.Component.Tab  where

import React (ReactElement, createElement)

import Blueprint.Event (EventHandler2)
import Blueprint.ComponentClass (tabClass, tabListClass, tabPanelClass, tabsClass)
import Blueprint.Type (Prop, PropsEx, UnknownStyleType)

type TabProps =  PropsEx
  ( id :: String
  , isDisabled :: Boolean
  , panelId :: String
  , isSelected :: Boolean
  )

type TabList = PropsEx
  ( indicatorWrapperStyle :: UnknownStyleType
  , shouldAnimate :: Boolean
  )

type TabPanel = PropsEx
  ( _id :: String
  , _tabId :: String
  )

type Tabs eff = PropsEx
  ( initialSelectedTabIndex :: Number
  , selectedTabIndex :: Number
  , onChange :: EventHandler2 eff Number  Number
  , indicatorWrapperStyle :: UnknownStyleType
  )

tab :: Prop TabProps -> Array ReactElement -> ReactElement
tab = createElement tabClass

tabList :: Prop TabList -> Array ReactElement ->  ReactElement
tabList = createElement tabListClass

tabPanel :: Prop TabPanel -> Array ReactElement -> ReactElement
tabPanel = createElement tabPanelClass

tabs :: forall eff. Prop (Tabs eff) -> Array ReactElement -> ReactElement
tabs = createElement tabsClass
