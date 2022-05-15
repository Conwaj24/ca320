#!/bin/env ghci

longest :: [[a]] -> [a]
longest [a] = a
longest [] = []
longest a | length (head a) > length b = head a
          | otherwise = b
               where b = longest(tail a) 
