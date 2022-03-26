module Lib
    ( grid
    , languages
    , formatGrid
    , outputGrid
    ) where

--someFunc :: IO ()
--someFunc = putStrLn someString

outputGrid::[String] -> IO()
outputGrid grid = putStrLn $ formatGrid grid


someString::String
someString = "someString"

formatGrid::[String]-> String
formatGrid = unlines

myUnlines :: [String] -> String
myUnlines [] = []
myUnlines (a:as) = a ++'\n' : myUnlines as

-- Started Implementing the grid
grid = [ "__C________R___"
       , "__SI________U__"
       , "__HASKELL____B_"
       , "__A__A_____S__Y"
       , "__R___B___C____"
       , "__PHP____H_____"
       , "____S_LREP_____"
       , "____I__M_Y__L__"
       , "____L_E__T_O___"
       , "_________HB____"
       , "_________O_____"
       , "________CN_____"
       ]

languages = [ "BASIC"
            , "COBOL"
            , "CSHARP"
            , "HASKELL"
            , "LISP"
            , "PERL"
            , "PHP"
            , "PYTHON"
            , "RUBY"
            , "SCHEME"
            ]