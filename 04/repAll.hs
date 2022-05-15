#!/bin/env ghci

repAll :: Eq a => a -> a -> [a] -> [a]
repAll _ _ [] = []
repAll o n l | o == first = n : repAll o n (tail l)
             | otherwise = first : repAll o n (tail l)
               where first = head l
