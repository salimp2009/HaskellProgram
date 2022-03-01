module Main where
import Data.List    

formatList :: String -> String ->String -> [String] -> String
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
       