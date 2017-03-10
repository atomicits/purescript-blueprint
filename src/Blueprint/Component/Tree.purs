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

import Prelude

import Control.Monad.Eff (Eff)
import React (ReactElement, createElement)

import Blueprint.Event (EventHandler, MouseEvent)
import Blueprint.ComponentClass (treeClass)
import Blueprint.Type (ComponentORString, Prop, PropsEx, UnknownReactType, UnknownFunctionType)



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

type TreeNodeProps eff = TreeNodePropsEx eff ()

type TreeNodePropsEx eff r =
  ( children :: UnknownReactType
  , contentRef :: UnknownFunctionType
  , depth :: Number
  , key :: NumberORString
  , onClick :: TreeNode -> MouseEvent eff -> Eff eff Unit
  , onCollapse :: TreeNode -> MouseEvent eff -> Eff eff Unit
  , onContextMenu :: TreeNode -> MouseEvent eff -> Eff eff Unit
  , onDoubleClick :: TreeNode -> MouseEvent eff -> Eff eff Unit
  , onExpand :: TreeNode -> MouseEvent eff -> Eff eff Unit
  , path :: Array Number
  |r
  )





tree :: forall eff. Prop (TreeProps eff) -> Array ReactElement -> ReactElement
tree = createElement treeClass
