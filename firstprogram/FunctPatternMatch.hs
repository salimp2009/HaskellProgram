module FunctPatternMatch where

func x y z = x + y + z

myHead (x:xs) = x
-- this did not work ??
--myHead [] = erro "empty no head"

isEmpty [] = True
isEmpty xs = False

main:: IO ()
main = do
     print $ func 1 2 3
     print $ myHead [1..10]
     print $ isEmpty []
     print $ isEmpty [1..3]