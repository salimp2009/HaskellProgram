module Main (main) where

-- is used to commentline
-- types, classes and Constructors start with Capital letters; MyType is type, MyDataConstructor is constructor
-- see for more examples ; https://kowainik.github.io/posts/naming-conventions

data MyType = MyDataConstructor String

class MyClass a where
    name:: a ->String

instance MyClass MyType where
    name (MyDataConstructor name)= name

func x = x
func' y = y

main = do 
    print $ name(MyDataConstructor "Salim")

    print $ 100 + 200

    print $ (+) 100 200