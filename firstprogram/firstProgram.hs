-- :: means has type main has type IO; which is a type class that performes input/output
-- () mean Unit  is type containing a single value name Unit and that value is also represented by () ;  
-- it is a tuple with zero elemnts
-- so overall below is called as ; main hastype IO Unit; 
-- which means main is a function that performs IO action which produces no value
main:: IO ()  

main = do 
    content <- readFile "number.txt"
    -- print content
    putStrLn content