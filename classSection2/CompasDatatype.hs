module CompasDatatype where

data Compass = North | South | West | East --deriving Show

instance Show Compass where
    show North =  "North"
    show South =  "South"
    show East =  "East"
    show West =  "North"

instance Eq Compass where
     North == North = True
     South == South = True
     East  == East   = True
     West  == West  = True  