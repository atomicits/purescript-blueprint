module Blueprint.Components.Tab where


import Prelude
import Blueprint.PropTypes (IPropsEx, Prop)
import React (ReactElement, createElement)
import Blueprint.ComponentsClasses (tabClass)


type TabProps = TabPropsEx ()

type TabPropsEx  r = IPropsEx (id :: String
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
