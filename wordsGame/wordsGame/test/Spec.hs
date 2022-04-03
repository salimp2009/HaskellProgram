import Test.Hspec
import Lib 


main :: IO ()
main = hspec $ do
    describe "How to write a test" $ do
        it "Should be able to run tests" $ do
            someString `shouldBe` "someString" 
        --    outputGrid grid `shouldBe` grid

            -- putStrLn "Test suite not yet implemented"