module CompasDatatype where

-- an example of a Sum type
data Compass = North | South | West | East 
        deriving (Show, Eq, Ord, Enum)

--instance Show Compass where
--    show North =  "North"
--    show South =  "South"
--    show East =  "East"
--    show West =  "North"

-- instance Eq Compass where
--      North == North = True
--      South == South = True
--      East  == East   = True
--      West  == West  = True  