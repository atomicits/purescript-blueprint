module Blueprint.ComponentClass where

import Prelude

import Control.Monad.Eff (Eff)
import React (ReactClass, ReactComponent, ReactElement)

import Blueprint.Type (Offset)
import Blueprint.Event (UnitEventHandler)





foreign import alertClass :: forall props. ReactClass props

-- DISCUSS: Please describe what would you like to discuss? so that its easy for me to answer!
-- SFC need to discuss
foreign import breadcrumbClass :: forall props. props -> ReactElement

foreign import buttonClass :: forall props. ReactClass props
foreign import anchorButtonClass :: forall props. ReactClass props

foreign import collapseClass :: forall props. ReactClass props
foreign import collapsibleListClass :: forall props. ReactClass props

-- need to discuss
foreign import contextMenuTargetClass :: ReactComponent -> ReactElement

foreign import datePickerClass :: forall props. ReactClass props
foreign import dateRangePickerClass :: forall props. ReactClass props
foreign import timePickerClass :: forall props. ReactClass props
foreign import dateTimePickerClass :: forall props. ReactClass props
foreign import dateInputClass :: forall props. ReactClass props

foreign import dialogClass :: forall props. ReactClass props

foreign import editableTextClass :: forall props. ReactClass props

foreign import checkboxClass :: forall props. ReactClass props
foreign import radioClass :: forall props. ReactClass props
foreign import radioGroupClass :: forall props. ReactClass props
foreign import switchClass :: forall props. ReactClass props
foreign import inputGroupClass :: forall props. ReactClass props
foreign import numericInputClass :: forall props. ReactClass props
foreign import hotkeyClass :: forall props. ReactClass props
foreign import hotkeysClass :: forall props. ReactClass props

-- need to discuss
foreign import hotkeysTargetClass :: forall props. ReactClass props

foreign import menuClass :: forall props. ReactClass props
foreign import menuItemClass :: forall props. ReactClass props
foreign import menuDividerClass :: forall props. ReactClass props

foreign import navbarClass :: forall props. ReactClass props

foreign import nonIdealStateClass :: forall props. ReactClass props

foreign import overlayClass :: forall props. ReactClass props

foreign import popoverClass :: forall props. ReactClass props

foreign import positionClass :: forall props. ReactClass props
foreign import portalClass :: forall props. ReactClass props
foreign import progressBarClass :: forall props. ReactClass props
foreign import spinnerClass :: forall props. ReactClass props
foreign import sVGSpinnerClass :: forall props. ReactClass props
foreign import sliderClass :: forall props. ReactClass props
foreign import rangeSliderClass :: forall props. ReactClass props
foreign import tableClass :: forall props. ReactClass props
foreign import columnClass :: forall props. ReactClass props
foreign import cellClass :: forall props. ReactClass props
foreign import columnHeaderCellClass :: forall props. ReactClass props
foreign import editableNameClass :: forall props. ReactClass props
foreign import editableCellClass :: forall props. ReactClass props
foreign import tabsClass :: forall props. ReactClass props
foreign import tabListClass :: forall props. ReactClass props
foreign import tabClass :: forall props. ReactClass props
foreign import tabPanelClass :: forall props. ReactClass props
foreign import tagClass :: forall props. ReactClass props
foreign import toastClass :: forall props. ReactClass props
foreign import toasterClass :: forall props. ReactClass props
foreign import tooltipClass :: forall props. ReactClass props
foreign import treeClass :: forall props. ReactClass props


foreign import contextMenuShow :: forall eff. ReactElement ->  Offset -> (UnitEventHandler eff) -> Eff eff Unit
foreign import contextMenuHide :: forall eff. Eff eff Unit
foreign import contextMenuIsOpen :: forall eff. Eff eff Boolean
