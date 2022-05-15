#!/bin/env ghci

num :: Eq a => a -> [a] -> Int
num e [a] | e == a = 1
          | otherwise = 0
num e [] = 0

num e a = (num e [head a]) + (num e (tail a))
