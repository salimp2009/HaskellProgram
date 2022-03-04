module TypeWrapping where

data Quaternion = Q 
        { 
          qR :: Double,
          qI :: Double,
          qJ :: Double,
          qK :: Double
        }
-- data method is creating a completing new type class and it has extra overhead
-- prefere newtype which is creating an type safe alias with no extra overhead or minimal
--data PrettyQuaternion = PrettyQuaternion { unPrettyQuaternion :: Quaternion }
newtype PrettyQuaternion = PrettyQuaternion { unPrettyQuaternion :: Quaternion }
instance Show PrettyQuaternion where
        show  q = let q' = unPrettyQuaternion q in "(" ++
              show (qR q') ++ " + " ++
              show (qI q') ++ "i + " ++
              show (qJ q') ++ "j + " ++
              show (qK q') ++ "k)"

-- data UglyQuaternion = UglyQuaternion { unUglyQuaternion ::Quaternion }
newtype UglyQuaternion = UglyQuaternion { unUglyQuaternion ::Quaternion }
instance Show UglyQuaternion where
        show  q = let q' = unUglyQuaternion q in "(" ++
              show (qR q') ++ "," ++
              show (qI q') ++ "," ++
              show (qJ q') ++ "," ++
              show (qK q') ++ ")"

main :: IO ()
main = do
    print "Type Wrapping;" 
    print $ PrettyQuaternion (Q 1 2 3 4)
    print $ UglyQuaternion (Q 1 2 3 4)