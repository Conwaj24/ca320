#!/bin/env ghci

rpad :: [Int] -> Int -> [Int]
rpad a n | length a == n = a
         | otherwise = rpad (a ++ [0]) n

maxLength :: [Int] -> [Int] -> Int
maxLength a b = max (length a) (length b)

sumPoly :: [Int] -> [Int] -> [Int]
sumPoly [] [] = []
sumPoly a b | length a /= length b = sumPoly (rpad a len) (rpad b len)
            | otherwise = (head a + head b) : sumPoly (tail a) (tail b)
               where len = maxLength a b
