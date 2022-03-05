-- Algebraic Type ; Sum type
-- similar to enum class colur { red, green, blue} in C++
-- deriving Show instance of the type so we can print them easily
-- Colour is a type; 
-- Red, Green, Blue is a data constructor
-- the | operator mean they are  alternatives
data Colour = Red Int | Green Int| Blue Int deriving Show

main :: IO ()
main = do
        print $ Red 20
