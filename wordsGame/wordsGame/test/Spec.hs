import Test.Hspec
import Lib 
import Data


main :: IO ()
main = hspec $ do
    describe "formatGrid" $ do
        it "Should concatenate very line with a new line" $ do
            formatGrid ["abc", "def", "ghc"] `shouldBe`  "abc\ndef\nghc\n"

    describe "findWord" $ do
        it "Should find the word in Grid" $ do
            findWord grid "HASKELL" `shouldBe`  Just "HASKELL"
            findWord grid "PERL" `shouldBe`  Just "PERL"
        it "Should not find the words in Grid" $ do     
            findWord grid "homey" `shouldBe`  Nothing

    describe "findwords" $ do
        it "Should find all the words in Grid" $ do
            findWords grid languages `shouldBe`  languages
        it "Should not find all the words in Grid" $ do
            findWords grid ["french", "GERMAN", "ENGLISH"] `shouldBe`  [] 