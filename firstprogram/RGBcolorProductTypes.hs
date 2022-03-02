module RGBcolorProductTypes (Colour) where

-- this is similar to struct RGB { int red; int green; int blue}
-- Algebraic Type ; Product type
data Colour = RGB Int Int Int deriving Show

