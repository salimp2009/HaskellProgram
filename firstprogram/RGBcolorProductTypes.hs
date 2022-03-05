module RGBcolorProductTypes (Colour) where

-- this is similar to struct RGB { int red; int green; int blue}
-- Algebraic Type ; Product type
data Colour = RGB Int Int Int deriving Show

-- example for nested pattern matching
data Pixel = Pixel Int Int Int Colour

pixelRed ::Pixel -> Int
pixelRed (Pixel _ _ _ (RGB r _ _)) = r

-- pattern matching using different function to
-- access a type classes one of the properties
red::Colour -> Int
red (RGB r _ _) = r

green::Colour -> Int
green (RGB _ g _) = g

blue :: Colour -> Int
blue (RGB _ _ b) = b

main::IO ()
main = do
      let myColour = RGB 20 30 40
      print $ RGB 10 20 30
      print myColour
      print $ red myColour
      print $ green myColour
      print $ blue myColour
      let myPixel = Pixel 100 100 100 (RGB 10 15 25)
      print $ pixelRed myPixel



