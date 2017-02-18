module Blueprint.Components.Menu where

import Blueprint.ComponentsClasses (menuClass, menuDividerClass, menuItemClass)
import Blueprint.PropTypes (ActionPropsEx, ComponentORString, Prop, PropsEx)
import React

type MenuItemProps = MenuItemPropsEx ()

type MenuItemPropsEx r = ActionPropsEx
  ( href :: String
  , target :: String
  , text ::  String
  , label :: ComponentORString
  , shouldDismissPopover :: Boolean
  -- handling submenu props
  -- , submenu :: Array IMenuItemProps
  , submenuViewportMargin :: { left :: Int, right :: Int }
  , useSmartPositioning :: Boolean
  | r
  )

type MenuProps = MenuPropsEx ()

type MenuPropsEx r = PropsEx r

type MenuDividerProps = MenuDividerPropsEx ()

type MenuDividerPropsEx r = PropsEx (title :: String | r)

menu :: Prop MenuProps -> Array ReactElement -> ReactElement
menu = createElement menuClass

menuDevider  :: Prop MenuDividerProps -> ReactElement
menuDevider p = createElement menuDividerClass p []

menuItem :: Prop MenuDividerProps -> ReactElement
menuItem p = createElement menuItemClass p []
