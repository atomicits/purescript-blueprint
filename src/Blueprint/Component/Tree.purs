module  Blueprint.Component.Tree
  ( NumberORString
  , TreeProps
  , TreePropsEx
  , TreeNode
  , TreeNodeProps
  , TreeNodePropsEx
  , tree
  , TreeEventHandler
  )  where

import Blueprint.Event
import Blueprint.ComponentClass (treeClass)
import Blueprint.Type (ComponentORString, Prop, PropsEx, UnknownFunctionType, UnknownReactType)
import React (ReactElement, createElement)


data NumberORString = String | Number

type TreeEventHandler eff =
  { node :: TreeNode
  , nodePath ::Array Number
  , e :: EventHandler eff (MouseEvent eff)
  }

type TreeProps eff  = TreePropsEx eff ()

type TreePropsEx eff r = PropsEx
  ( contents :: Array TreeNode
  , onNodeClick :: TreeEventHandler eff
  , onNodeCollapse :: TreeEventHandler eff
  , onNodeContextMenu :: TreeEventHandler eff
  , onNodeDoubleClick :: TreeEventHandler eff
  , onNodeExpand :: TreeEventHandler eff
  |r
  )

newtype TreeNode = TreeNode
  { childNodes :: Array TreeNode
  , className :: String
  , hasCaret :: Boolean
  , iconName :: String
  , id :: NumberORString
  , isExpanded :: Boolean
  , isSelected :: Boolean
  , label :: ComponentORString
  , secondaryLabel :: ComponentORString
  }

type TreeNodeProps = TreeNodePropsEx ()

type TreeNodePropsEx r =
  ( children :: UnknownReactType
  , contentRef :: UnknownFunctionType
  , depth :: Number
  , key :: NumberORString
  , onClick :: UnknownFunctionType
  , onCollapse :: UnknownFunctionType
  , onContextMenu :: UnknownFunctionType
  , onDoubleClick :: UnknownFunctionType
  , onExpand :: UnknownFunctionType
  , path :: Array Number
  |r
  )





tree :: forall eff. Prop (TreeProps eff) -> Array ReactElement -> ReactElement
tree = createElement treeClass
