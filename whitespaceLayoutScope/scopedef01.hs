-- this is just to demonstration of scope ; should be used for compiling
-- that is why definitions are left as undefined
f = do
        a
        b
        c
g= do 
        a
        b
        c

a:: IO() -- type dignatue required to give f an ambigous type

-- semicolon ; allows to write group expressions on the same line; note the last one does not require
-- f can refer to g 
a = undefined; b=undefined; c=undefined

main = undefined