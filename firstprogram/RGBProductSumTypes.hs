module RGBProductSumTypes where
-- module name should start with Capital letters

data Colour = RGB Int Int Int | CMYK Float Float Float Float deriving Show

-- the red Squiggles are false errors; it works
-- this is like using std::variant and providing different function 
-- for different types
colourModel :: Colour -> String
colourModel (RGB _ _ _) = "RGB"
colourModel (CMYK _ _ _ _) = "CMYK"

-- the red Squiggles are false errors; it works
-- this is like if else statement in C++
colourModel2 :: Colour -> String
colourModel2 c = 
            case c of RGB _ _ _     -> "RGB"
                      CMYK _ _ _ _  -> "CMYK"


main::IO ()
main = do
    print $ RGB 20 30 40
    let myColor = CMYK 1.0 2.0 3.0 4.0
    let myColor2 = RGB 10 20 30
    print $ colourModel myColor
    putStrLn $ colourModel myColor2
    
    print $ colourModel2 myColor
    putStrLn $ colourModel2 myColor2
   
