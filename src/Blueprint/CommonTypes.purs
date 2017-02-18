module Bluprint.CommonTypes where

newtype Position = Position Int

position ::
  { topLeft :: Position
  , top :: Position
  , topRight :: Position
  , rightTop :: Position
  , right :: Position
  , rightBottom :: Position
  , bottomRight :: Position
  , bottom :: Position
  , bottomLeft :: Position
  , leftBottom :: Position
  , left :: Position
  , leftTop :: Position
  }
position =
  { topLeft :  Position 0
  , top :  Position 1
  , topRight :  Position 2
  , rightTop :  Position 3
  , right :  Position 4
  , rightBottom :  Position 5
  , bottomRight :  Position 6
  , bottom :  Position 7
  , bottomLeft :  Position 8
  , leftBottom :  Position 9
  , left :  Position 10
  , leftTop :  Position 11
  }
