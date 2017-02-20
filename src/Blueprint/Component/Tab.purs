module Blueprint.Component.Tab where

import React (ReactElement, createElement)

import Blueprint.ComponentClass (tabClass)
import Blueprint.Type (Prop, PropsEx)

type TabProps = TabPropsEx ()

type TabPropsEx  r = PropsEx
  ( id :: String
  , isDisabled :: Boolean
  , panelId :: String
  , indicatorWrapperStyle :: String     --- TODO React.CSSProperties
  , shouldAnimate :: Boolean
  , _id :: String
  , _tabId :: String
  , initialSelectedTabIndex :: Number
  , selectedTabIndex :: Number
  , onChange :: String     --- TODO (selectedTabIndex: number, prevSelectedTabIndex: number): void;
  |r
  )

tab :: Prop TabProps -> Array ReactElement -> ReactElement
tab = createElement tabClass
