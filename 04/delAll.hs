#!/bin/env ghci

delAll :: Eq a => a -> [a] -> [a]
delAll _ [] = []
delAll a l | a == first = delAll a (tail l)
           | otherwise = first : delAll a (tail l)
             where first = head l
