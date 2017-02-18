module  Blueprint.Components.Tree where

import React (ReactElement, createElement)
import Blueprint.PropTypes (ComponentORString, IPropsEx, Prop)
import Blueprint.ComponentsClasses (treeClass)


type TreeProps = TreePropsEx ()

type TreePropsEx r = IPropsEx ( hasCaret :: Boolean
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
