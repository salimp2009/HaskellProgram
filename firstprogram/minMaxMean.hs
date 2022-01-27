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
-- Just is a ctually constructor for Maybe
--h is head and t is tail; head is constructed from the tails; it is kinda of pattern matching which mean the list is not empty
minMax (h:t) = Just $ foldr
    (\x (min, max)) -> (if x <min then x else min, if x > max then x else max)
    (h,h)
    t

-- when the list is empty
-- underscore _ mean otherwise or anything; which means if the none of body type does not match
-- then there is Nothing
minMax _ = Nothing

main ::IO()
