module TypeClasses where

-- this is an abstract type class therefore 
-- there is no implementation 
-- any class that provides instance of it should implement
-- the method frob

class Frobber a where
    frob::a -> (String, Integer)

-- data A = A { aValue :: Int}    
newtype A = A { aValue :: Int}
instance Frobber A where
    frob a = let value = aValue a in (show value, toInteger value)

-- note: toInteger in the implementation of frob b is unnecessary
-- since bValue::Integer and frob contract in Integer for the 2nd value of the tuple
newtype B = B { bValue :: Integer}
instance Frobber B where
    frob b = let value = bValue b in (show value, toInteger value)

newtype C = C { cValue :: Double}
instance Frobber C where
    frob c = let value = cValue c in (show value, round value)

printFrobResult::Frobber a => a -> IO()
printFrobResult = print . frob

main:: IO ()
main = do
    print "Type Classes;"
    printFrobResult (A 100)
    printFrobResult (B (2 ^ 70))
    printFrobResult (C 3.141)
    