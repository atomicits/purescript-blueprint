module Blueprint.Component.Table.Layers where

import Prelude

import React

import Blueprint.ComponentClass
import Blueprint.Type
import Blueprint.Component.Table.Regions

---- GuideLayerProps

type GuideLayerProps = PropsEx
  ( verticalGuides :: Array Number
  , horizontalGuides :: Array Number
  )

---- IRegionLayerProps

type RegionStyler =
  { region :: String } -- (region: IRegion): React.CSSProperties;

type RegionLayerProps = PropsEx
  ( regions :: Region
  , getRegionStyle :: RegionStyler
  )
