#!/bin/env ghci

numAtHead :: Ord a => a -> [a] -> Int
numAtHead _ [] = 0
numAtHead e a | head a == e = 1 + numAtHead e (tail a)
              | otherwise = 0

toFirstOccurence :: Ord a => a -> [a] -> [a]
toFirstOccurence _ [] = []
toFirstOccurence e a | head a == e = a
                     | otherwise = toFirstOccurence e (tail a)

numSorted :: Ord a => a -> [a] -> Int
numSorted _ [] = 0
numSorted e a = numAtHead e (toFirstOccurence e a)
