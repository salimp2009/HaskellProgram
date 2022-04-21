module TestCode where

-- this is only for trying ideas before implementing them

-- sample coordinate grid
coords :: [[(Integer, Integer)]]
coords = [ [(0,0),(0,1),(0,2),(0,3),(0,4),(0,5),(0,6),(0,7)]
         , [(1,0),(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7)]
         , [(2,0),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7)]
         , [(3,0),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7)]
         , [(4,0),(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7)]
         , [(5,0),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7)]
         , [(6,0),(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7)]
         , [(7,0),(7,1),(7,2),(7,3),(7,4),(7,5),(7,6),(7,7)]
         ]


og:: Show a => [a] -> IO()
og = putStrLn . unlines  . map show 

-- div2 x = x `mod` 2 == 0
div2 :: p -> Bool
div2 x = even 2

-- this is similar to coords above
-- [(x,y) | x  <- [0..7}, y <- [0..7)]

-- Copy of Data
grid2 :: [String]
grid2 = [ "__C________R___"
       , "__SI________U__"
       , "__HASKELL____B_"
       , "__A__A_____S__Y"
       , "__R___B___C____"
       , "__PHP____H_____"
       , "____S_LREP_____"
       , "____I__M_Y__L__"
       , "____L_E__T_O___"
       , "_________HB____"
       , "_________O_____"
       , "________CN_____"
       ]
    
languages2 = [ "BASIC"
            , "COBOL"
            , "CSHARP"
            , "HASKELL"
            , "LISP"
            , "PERL"
            , "PHP"
            , "PYTHON"
            , "RUBY"
            , "SCHEME"
            ]