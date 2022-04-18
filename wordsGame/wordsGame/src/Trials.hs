module Trials 
    (    mymapMaybe
       , myUnlines 
    ) where

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
