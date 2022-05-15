#!/bin/env ghci

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [a] = True
isPalindrome [] = True
isPalindrome a = (head a) == (last a) && isPalindrome (tail(init a))
