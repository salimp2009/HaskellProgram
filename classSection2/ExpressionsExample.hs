module ExpressionsExample where

data Expression = Number Int
                | Add Expression Expression
                | Subtract Expression Expression
                deriving (Eq, Ord, Show)

calculate:: Expression -> Int
calculate (Number a) = a
calculate (Add a b ) = (calculate a ) + (calculate b)         
calculate (Subtract a b ) = (calculate a ) - (calculate b)

newHead :: [p] -> p
newHead [] = error "Empty list!"
newHead [a] = a
newHead (a:as) = a


-- Use of calculate 
{- This is a multine comment 
calculate (Subtract (Number 1) (Number 2))
calculate (Subtract (Number 5) (Number 3))
calculate (Subtract (Number 50) (Add (Number 3) (Number 5)))
-}
