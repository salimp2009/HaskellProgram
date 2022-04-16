module Lib
    ( grid
    , languages
    , formatGrid
    , outputGrid
    , findWord
    , findWordInLine
    , findWords
    , skew
    , findwordsOrig
    , someString
    ) where

import Data.List (isInfixOf, or, transpose)
import Data.Maybe (mapMaybe, catMaybes)


-- this can be used for function eqString
-- import GHC.Base

--someFunc :: IO ()
--someFunc = putStrLn someString

-- type alias
type Grid = [String]

outputGrid::Grid -> IO()
outputGrid grid = putStrLn $ formatGrid grid

-- Not used any more; it was a test for beginning
someString::String
someString = "someString"

formatGrid::Grid -> String
formatGrid = unlines

getLines::Grid -> [String]
getLines grid = 
    let horizontal  = grid 
        vertical    = transpose grid
        diagonal    = diagonalize grid
        diagonal'   = diagonalize $ map reverse grid    
        lines = horizontal <> vertical <> diagonal <> diagonal'
    in  lines  <> map reverse lines

--diagonalize :: Grid -> Grid 
diagonalize :: [[Char]] -> [[Char]]
diagonalize = transpose . skew

findWordInLine::String -> String -> Bool
findWordInLine = isInfixOf

findWord :: [[Char]] -> String -> Maybe String
findWord grid word = 
        let lines = getLines grid
            found =  any (findWordInLine word) lines
        in if found then Just  word else Nothing

findWords :: [[Char]] -> [String] -> [String]
findWords grid = mapMaybe (findWord grid)


-- skew:: Grid -> [String]
skew []     = []
skew (l:ls) = l : skew (map indent ls)
     where indent line = '_' : line


-- These are left overs from the first original ; changed to above
-- findWord :: Grid -> String -> Bool
-- findWord grid word = 
--    let lines = grid ++ map reverse grid
--        found =  any (findWordInLine word) lines
--    in or $ map (findWordInLine word) lines

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


findwordsOrig :: [[Char]] -> [String] -> [String]
findwordsOrig grid words =
        let foundWords = map (findWord grid) words
        in catMaybes foundWords  

-- implementation of mapMaybe 
mymapMaybe :: (a -> Maybe b) -> [a] -> [b]
mymapMaybe _ []     = []
mymapMaybe f (x:xs) =
 let rs = mymapMaybe f xs in
 case f x of
  Nothing -> rs
  Just r  -> r:rs


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