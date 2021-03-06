module Main where
import Data.List    

-- operator -> is right associative; so type signature can be written
-- paranthesis start from right keeping in mind ever function has one
-- argument and return a type
formatList :: String -> (String -> (String -> ([String] -> String)))
formatList start end seperator xs = start ++ intercalate seperator (map show xs) ++ end 

-- this one removes "" around the strings but may not work if input is not String or [Char]
formatList' :: String -> String ->String -> [String] -> String
formatList' start end seperator xs = start ++ intercalate seperator xs ++ end 

main :: IO ()
main = do
        putStrLn $ formatList "<list>" "<list>" "|" ["Demir", "Didos", "Salitos", "Semos"]
        putStrLn $ formatList' "<list>" "<list>" "|" ["Demir", "Didos", "Salitos", "Semos"]
        putStrLn $ formatList' "<list>" "<list>" "|" ["1" , "2", "3", "4"]
        print $ intercalate " | " ["Salim", "Didem", "Demir"]
       