#!/bin/env ghci

delAll :: Eq a => a -> [a] -> [a]
delAll e [a] | a == e = []
             | otherwise = [a]
delAll _ [] = []

delAll e a = (delAll e [head a]) ++ (delAll e (tail a))
