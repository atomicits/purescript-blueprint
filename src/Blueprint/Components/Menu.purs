module Blueprint.Components.Menu where

import React
import Blueprint.PropTypes
import Blueprint.ComponentsClasses

type MenuItemProps = MenuItemPropsEx ()

type MenuItemPropsEx r = IActionPropsEx ( text ::  String
                                        , label :: ComponentORString
                                        , shouldDismissPopover :: Boolean
                                        , submenu :: Array MenuItemProps
                                        , submenuViewportMargin :: { left :: Int, right :: Int }
                                        , useSmartPositioning :: Boolean
                                        | r
                                        )
