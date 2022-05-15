#!/bin/env ghci

repFirst :: Eq a => a -> a -> [a] -> [a]
repFirst _ _ [] = []
repFirst o n l | o == first = n : tail l
               | otherwise = first : repFirst o n (tail l)
                 where first = head l
