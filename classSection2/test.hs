main :: IO ()
main = do
    msg <- getLine 
    print (greet msg)

greeting ="Hello"
greet who = greeting <> ", " <> who