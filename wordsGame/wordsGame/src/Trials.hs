module Trials where

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

data List a = Empty |  List a (List a) deriving (Show)


toList:: [a] -> List a
toList [] = Empty
toList (a:as) = List a (toList as)

fromList :: List a -> [a]
fromList Empty = []
fromList (List a as) = a : fromList as

instance Functor List where
  fmap _ Empty = Empty
  fmap f (List a as) = List (f a) (fmap f as)
 

