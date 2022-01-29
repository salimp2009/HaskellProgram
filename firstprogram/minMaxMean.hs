--readInts is a function has String and result list of integers
-- readInts has type String that maps to list of Ints
readInts:: String ->[Int]
-- let allows ws as an argument to function readInts
-- words applies to s 
-- let ws intruduces name ws into expression map read ws to right side of in keyword; 
-- which means read string into ws and map to s as form a list of int
readInts s = let ws = words s in map read ws

-- Maybe is class type like variant using Pattern Matching
minMax :: Ord a =>[a]-> Maybe(a,a)
-- Just is capitalized so it can be either Types, Type Constructor or Data Constructors
-- Just is actually constructor for Maybe
minMax (h:t) = Just $ foldr
-- h is head , t is tail; it is kinda of pattern matching
    (\x (min, max) -> (if x <min then x else min, if x > max then x else max))
    (h,h)
    t

-- This is the case when the list is empty
-- underscore _ mean otherwise or anything; which means if the none of body type does not match
-- then there is Nothing
minMax _ = Nothing

main :: IO ()
main = do
    content <- readFile "number.txt"
    let values = readInts content
        count   = length values
        total   = sum values
        mean    = fromIntegral total / fromIntegral count
        range = minMax values 
    print count
    print total
    print mean
    print range

