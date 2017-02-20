module  Blueprint.Component.Tree
 ( TreeProps
 , TreePropsEx
 , NumberORString
 , tree
 ) where

import Blueprint.ComponentClass (treeClass)
import Blueprint.Type (ComponentORString, Prop, PropsEx)
import React (ReactElement, createElement)

data NumberORString = String | Number

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

tree :: Prop TreeProps -> Array ReactElement -> ReactElement
tree = createElement treeClass

-- export type TreeEventHandler = (node: ITreeNode, nodePath: number[], e: React.MouseEvent<HTMLElement>) => void;

type TreeEventHandler = {node :: TreeProps, nodePath :: Array Number}
