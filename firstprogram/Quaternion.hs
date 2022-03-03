module Quaternion where

data Quaternion = Q 
    { 
      qR :: Double,
      qI :: Double,
      qJ :: Double,
      qK :: Double
    } deriving Show

-- this is manually implementing Show class
-- show method four our type class; similar to overloading
-- ostream for a user defined type/class 
-- but in Haskell we use deriving keyword to make it easier    
 
-- instance Show Quaternion where
--    show q = "(" ++ 
--         show (qR q) ++ " + " ++ 
--         show (qI q) ++ "i + " ++
--       show (qJ q) ++ "j + " ++
--       show (qK q) ++ "k)"       

main :: IO ()
main = do 
        putStrLn "Quaternion; "
        print $ Q 1 2 3 4
        