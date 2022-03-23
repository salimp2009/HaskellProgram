module Lib
    ( someFunc
    , someString
    ) where

someFunc :: IO ()
someFunc = putStrLn someString

someString::String
someString = "someString"

-- Started Implementing the grid
grid = [ "__C__________R___"
       , "__SIC_________U__"
       , "__HASKELL______B_" 
       , "__A__A_______S__Y"
       , "__C__________R___"
       , "__C__________R___"
       , "__C__________R___"
       , "__C__________R___"
       ]

