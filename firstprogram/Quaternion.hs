module Quaternion where

data Quaternion = Q 
    { 
      qR :: Double,
      qI :: Double,
      qJ :: Double,
      qK :: Double
    } deriving Show

-- using undefined allows us to implement those later; 
-- to support Num type we have to implement those minimum functions
-- which can be easily can be access that info by ghci and use :define on a class type
-- that will show all implementations and minimums required

instance Num Quaternion where
    q1 + q2 = Q (qR q1 + qR q2) (qI q1 + qI q2) (qJ q1 + qJ q2) (qK q1 + qK q2)
    q1 * q2 = undefined
    abs = undefined
    signum = undefined
    fromInteger = undefined
    negate = undefined

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
        print $ Q 1 2 3 4 + Q 10 20 30 40
        