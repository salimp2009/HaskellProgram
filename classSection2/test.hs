main :: IO ()
main =  do
        print "Please enter  your name:"
        msg <- getLine
        putStrLn (greet msg)

greeting ="Hellow"
greet who = greeting <> ", " <> who