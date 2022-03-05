module RGBProductSumTypes where
-- module name should start with Capital letters

data Colour = RGB Int Int Int | CMYK Float Float Float Float deriving Show


main::IO ()
main = do
    print $ RGB 20 30 40
