#!/bin/env ghci

myProduct :: [Int] -> Int
myProduct [] = 1
myProduct [i] = i
myProduct ints = head ints + myProduct (tail ints)

