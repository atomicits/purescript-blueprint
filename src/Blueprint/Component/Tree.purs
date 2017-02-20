module  Blueprint.Component.Tree where

import React (ReactElement, createElement)

import Blueprint.ComponentClass (treeClass)
import Blueprint.Type (ComponentORString, Prop, PropsEx)

type TreeProps = TreePropsEx ()

type TreePropsEx r = PropsEx
  ( hasCaret :: Boolean
  , iconName :: String
  , id :: NumberORString
  , isExpanded :: Boolean
  , isSelected :: Boolean
  , label :: ComponentORString
  , secondaryLabel :: ComponentORString
  , contents :: String            --- TODO ITreeNode[];
  , onNodeClick :: String         --- TODO TreeEventHandler
  , onNodeCollapse :: String      --- TODO TreeEventHandler
  , onNodeContextMenu :: String   --- TODO TreeEventHandler
  , onNodeDoubleClick :: String   --- TODO TreeEventHandler
  , onNodeExpand :: String        --- TODO TreeEventHandler
  |r
  )

data NumberORString = String | Number

tree :: Prop TreeProps -> Array ReactElement -> ReactElement
tree = createElement treeClass
