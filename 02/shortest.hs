#!/bin/env ghci

shortest :: [[a]] -> [a]
shortest [a] = a
shortest [] = []
shortest a | length (head a) < length b = head a
           | otherwise = b
               where b = shortest(tail a) 
