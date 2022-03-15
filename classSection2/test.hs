main :: IO ()
main =  do
        print "Please enter  your name:"
        msg <- getLine
        putStrLn (greet msg)

greeting :: [Char]
greeting ="Hellow"

greet :: [Char] -> [Char]
greet who = greeting <> ", " <> who

add :: Num a => a -> a -> a
add a b = a + b

-- this is just sameple function but lambda here is unnecessary
add1 :: Integer -> Integer
add1 = \x -> x + 1

add' :: Integer -> Integer -> Integer
add' = (+)

