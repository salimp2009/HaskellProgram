-- readInts is a function has String and result list of integers
-- readInts has type String that maps to list of Ints
readInts:: String ->[Int]
-- let allows ws as an argument to function readInts
-- words applies to s 
-- let ws intruduces name ws into expression map read ws to right side of in keyword; 
-- which means read string into ws and map read ws into read function and ws converts the string into words 
-- then all these word will be converted as a list of Int
-- this is similar to  readInts s = map read words s
-- could have use a lamda readInts = map read (\s -> words s)
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
    let values  = readInts content
        count   = length values
        total   = sum values
        mean    = fromIntegral total / fromIntegral count 
        range   = minMax values 
    print   count
    print   total
    print   mean
    print range

-- in Haskell each function actually has one argument
-- when you have more than one arg compiler 
-- converts those into several functions with one argument
-- Different Lambda definitions ;
-- lambda with 2 args means underthehood the 2 function with one arg 
-- composed together
-- \x y -> x + y ; 
-- \x ->\y->x+y
-- \x -> (\y ->x + y)

-- Other examples of lambdas  / functions;
-- parenthesizedWord = \s -> "(" ++ s ++ ")"

-- this one has 2 functions ++ is already an operator that takes a list of char and combines
-- them giving another list of char ; similar to string concaneta ;
-- here one of the args are given as "(" ; open parens ; these are known as sections
-- the dot . operator composes functions 
--parenthesizedWord =("(" ++) . (++ ")")   

-- Other examples of functions
-- funct x y = show x ++ show y
-- or you can use as infix ; which means the args will be on either side of the funct
-- x `funct` y = show x ++ show y
-- e.g; "aaa" `funct` "bbb" will give you = "\"aaa\"\"bbb\""

-- examples of sections ; which is partial imp. functions
-- e.g you declare a func that has only one the expected argumnet
-- leftSection = 5 (`func`)
-- rightSection = (`func` 5)
-- e.g usage ; leftSection 6  

-- Example of using lambdas & maping
-- parenthesizedWords s = unwords $ map (\s -> "(" ++ s ++ ")") (words s) 
-- parenthesizedWord s = map (\s -> "(" ++ s ++ ")") (words s) 

-- Example of predicate function less than five
-- lessThanFive x = x < 5

-- This can be also converted any given variable 
-- lessThan x y = x < y

-- This can used with ready function filter to filter elements less than five in a list
-- filter lessThanFive [1..10]  

-- This can also be done with a lambda
-- filter (\x -> x < 5) [1..10]

-- Example of how filters works
-- myfilter p xs = [ x | x <- xs, p x]


-- during ghci we can use multine to write long commands by using :} to start then hit enter
-- write functions then finish wirth :}

-- also refer the commands that are include in packages 
-- https://hoogle.haskell.org/?hoogle=words&scope=set%3Astackage
-- it is like cpp reference for C++; 
-- describe the functions shows their declarations / examples



