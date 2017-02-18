module Blueprint.Components.Menu where

import React
import Blueprint.PropTypes
import Blueprint.ComponentsClasses

type IMenuItemProps = IMenuItemPropsEx ()

type IMenuItemPropsEx r = IActionPropsEx ( href :: String
                                         , target :: String
                                         , text ::  String
                                         , label :: ComponentORString
                                         , shouldDismissPopover :: Boolean
-- handling submenu props                , submenu :: Array IMenuItemProps
                                         , submenuViewportMargin :: { left :: Int, right :: Int }
                                         , useSmartPositioning :: Boolean
                                         | r
                                         )

type IMenuProps = IMenuPropsEx ()

type IMenuPropsEx r = IPropsEx r

type IMenuDividerProps = IMenuDividerPropsEx ()

type IMenuDividerPropsEx r = IPropsEx (title :: String | r)

menu :: Prop IMenuProps -> Array ReactElement -> ReactElement
menu = createElement menuClass


menuDevider  :: Prop IMenuDividerProps -> ReactElement
menuDevider p = createElement menuDividerClass p []


menuItem :: Prop IMenuDividerProps -> ReactElement
menuItem p = createElement menuItemClass p []
