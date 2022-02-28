module Main where
    
t0::(Int, Int)
t0 =(2021, 2023)

t1::(String, Int, Double)
t1=("Salitos", 50, 2034.456)

t2::([Int], [String], (Float, Char))
t2=([1..5], ["aa", "bb", "cc"], (50.456, 'x'))

t3::[(Int, Int)]
t3 = [(n, n^2) | n <- [1..5]]

main::IO()
main= do
    print "Tuples and Lists"
    print t0 
    print t1 >> putChar '\n'
    print t2 >> putChar '\n'
    print t3 >> putChar '\n'
