#!/bin/env ghci

isProduct ::  Float -> Float -> Float -> Bool
isProduct a b c = (a*b) == c || (a*c) == b || (b*c) == a

