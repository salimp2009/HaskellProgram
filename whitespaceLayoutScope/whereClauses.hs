-- where is like let binding introduces expression
-- 

f x y = a + b
    where 
        a =x --the above a will be equal to x
        b =y -- the above b will be equal to y

g x y = a + b
    where   x=a
            y=b

a= undefined; b=undefined
main = undefined 