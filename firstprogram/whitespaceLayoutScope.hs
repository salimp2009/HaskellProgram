-- x & y are visible to each other in the same scope
-- x and y are available to print with "in" keyword and also only available / visible main
-- like main() { x=5; y=6; print(x+y); } in c++

-- compiled using command line ; stack ghc -- -fno-code  whitespaceLayoutScope.hs
-- which does not generate code only check code for correctness

-- x& y are part of a group and has to be indented only one white space from main but it is not a good style
-- the indentation used is a good style

main =
    let
        x=5
        y=6
    in print $ (x+y)/=0