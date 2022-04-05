module Lib
    ( grid
    , languages
    , formatGrid
    , outputGrid
    , findWord
    , findWordInLine
    , someString
    ) where

import Data.List (isInfixOf, or)

-- this can be used for function eqString
-- import GHC.Base

--someFunc :: IO ()
--someFunc = putStrLn someString

-- type alias
type Grid = [String]

outputGrid::Grid -> IO()
outputGrid grid = putStrLn $ formatGrid grid

someString::String
someString = "someString"

formatGrid::Grid -> String
formatGrid = unlines

--findWord :: Grid -> String -> Bool

findWord :: [[Char]] -> String -> Bool
findWord grid word = 
        let lines = grid ++ map reverse grid
        in any (findWordInLine word) lines
        -- in or $ map (findWordInLine word) lines

-- Original implementation
-- findWord grid word = or $ map (findWordInLine word) grid

findWordInLine::String -> String -> Bool
findWordInLine = isInfixOf

myUnlines :: [String] -> String
myUnlines [] = []
myUnlines (a:as) = a ++'\n' : myUnlines as

-- Started Implementing the grid
grid :: [String]
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