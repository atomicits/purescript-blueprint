module Blueprint.Component.Menu
  ( MenuItemProps
  , MenuItemPropsEx
  , MenuProps
  , MenuDividerProps
  , menu
  , menuItem
  , menuDevider
  ) where

import React
import Blueprint.ComponentClass (menuClass, menuDividerClass, menuItemClass)
import Blueprint.Type (ActionPropsEx, ComponentORString, Prop, PropsEx)

type MenuItemProps eff = MenuItemPropsEx eff ()

type MenuItemPropsEx eff r = ActionPropsEx eff
  ( href :: String
  , target :: String
  , label :: ComponentORString
  , shouldDismissPopover :: Boolean
  -- handling submenu props
  -- , submenu :: Array IMenuItemProps
  , submenuViewportMargin :: { left :: Int, right :: Int }
  , useSmartPositioning :: Boolean
  | r
  )

type MenuProps =  PropsEx ()

type MenuDividerProps =  PropsEx (title :: String)

menu :: Prop MenuProps -> Array ReactElement -> ReactElement
menu = createElement menuClass

menuDevider  :: Prop MenuDividerProps -> ReactElement
menuDevider p = createElement menuDividerClass p []

menuItem :: Prop MenuDividerProps -> ReactElement
menuItem p = createElement menuItemClass p []
