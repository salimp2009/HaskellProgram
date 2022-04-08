module Lib
    ( grid
    , languages
    , formatGrid
    , outputGrid
    , findWord
    , findWordInLine
    , findWords
    , findwordsOrig
    , someString
    ) where

import Data.List (isInfixOf, or)
import Data.Maybe (mapMaybe, catMaybes)


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

findWord :: [[Char]] -> String -> Maybe String
findWord grid word = 
        let lines = grid ++ map reverse grid
            found =  any (findWordInLine word) lines
        in if found then Just  word else Nothing

-- in or $ map (findWordInLine word) lines
-- Original implementation
-- findWord grid word = or $ map (findWordInLine word) grid

-- tried to implement if the first search fails and then does the second 
-- but this seems less efficient than above
finWordAlt :: [String] -> String -> Bool
finWordAlt grid word= or $ map (findWordInLine word) grid ++ map (findWordInLine word .reverse) grid

--findWords::Grid -> [String] -> [Bool]
-- findWords :: [[Char]] -> [String] -> [Maybe String]
--findWords :: [[Char]] -> [String] -> [String]
--findWords grid words = catMaybes $ map (findWord grid) words

findWords :: [[Char]] -> [String] -> [String]
findWords grid = mapMaybe (findWord grid)

findwordsOrig :: [[Char]] -> [String] -> [String]
findwordsOrig grid words =
        let foundWords = map (findWord grid) words
        in catMaybes foundWords  

-- implementation mapMaybe 
mymapMaybe          :: (a -> Maybe b) -> [a] -> [b]
mymapMaybe _ []     = []
mymapMaybe f (x:xs) =
 let rs = mymapMaybe f xs in
 case f x of
  Nothing -> rs
  Just r  -> r:rs


findWordInLine::String -> String -> Bool
findWordInLine = isInfixOf

myUnlines :: [String] -> String
myUnlines [] = []
myUnlines (a:as) = a ++'\n' : myUnlines as


-- Started Implementing the grid1
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