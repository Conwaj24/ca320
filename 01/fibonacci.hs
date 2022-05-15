#!/bin/env ghci

fibonacci :: Int -> Int
fibonacci 1 = 0
fibonacci 2 = 1
fibonacci i = fibonacci (i-1) + fibonacci (i-2)

