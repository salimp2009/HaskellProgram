module Main where

-- operator : is named as cons ; which constructs / deconstructs
-- data ; in this case it constructs a list on left side
-- deconstructs on the right side ; which mean passing the values 
-- one by one into function     

myMap :: (a -> b)->[a]->[b]
myMap _ [] = []
myMap f (a:as) = f a : myMap f as


myFilter :: (a-> Bool) -> [a] ->[a]
myFilter _ [] = []
myFilter f (a:as) = if  f a then a : myFilter f as else myFilter f as

myFold :: (a -> b -> b) -> b-> [a] -> b
myFold _ b [] = b
myFold f b (a:as) = myFold f (f a b) as

main :: IO ()
main = do
    print $ myMap show [1..5]
    print $ myMap (++ " ++ ") (myMap show [1,2,3,45])
    print $ myFilter (>30) [1, 5..45]
    print $ myFold (+) 100 [1..5]
    print $ myFold (\x y-> x * (x+1) + y) 0 [1..5]