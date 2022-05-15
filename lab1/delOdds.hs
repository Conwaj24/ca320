#!/bin/env ghci

delOdds :: [Int] -> [Int]
delOdds [] = []
delOdds l | odd first = delOdds (tail l)
          | otherwise = first : delOdds (tail l)
             where first = head l
