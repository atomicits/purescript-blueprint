module Bluprint.CommonTypes where

newtype Position = Position Int

position :: { top_left :: Position
            , top :: Position
            , top_right :: Position
            , right_top :: Position
            , right :: Position
            , right_bottom :: Position
            , bottom_right :: Position
            , bottom :: Position
            , bottom_left :: Position
            , left_bottom :: Position
            , left :: Position
            , left_top :: Position
            }

position = { top_left :  Position 0
            , top :  Position 1
            , top_right :  Position 2
            , right_top :  Position 3
            , right :  Position 4
            , right_bottom :  Position 5
            , bottom_right :  Position 6
            , bottom :  Position 7
            , bottom_left :  Position 8
            , left_bottom :  Position 9
            , left :  Position 10
            , left_top :  Position 11
            }
