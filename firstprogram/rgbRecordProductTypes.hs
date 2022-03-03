module RecordProductTypes (Colour) where

-- similar to C++ struct; this way we give a name to each type 
data Colour = RGB
    {
        red :: Int ,
        green :: Int ,
        blue :: Int
    } deriving Show
