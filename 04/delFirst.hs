#!/bin/env ghci

delFirst :: Eq a => a -> [a] -> [a]
delFirst _ [] = []
delFirst a l | a == first = tail l
             | otherwise = first : delFirst a (tail l)
               where first = head l
