import Data.Complex
import Data.Ratio

n0::Int
n0 = 5

n1::Double
n1 = 5.0

n2::Complex Double
n2  = 2 :+ 3

n3::Ratio Int
n3 = 2 % 3

main::IO()
main = do
        print "hello types!!"
        print n0
        print n1
        print n2
        print n3


-- to create type aliases ;
-- this create an Alias Port that is Int
-- to check use :info
-- type Port = Int
-- type HostInfo = (String, Int)
-- type HostInfo =(String, Port)