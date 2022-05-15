#!/bin/env ghci

isTriangle :: Float -> Float -> Float -> Bool
isTriangle a b c = a + b <= c || 
            a + c <= b ||
            b + c <= a

triangleArea :: Float -> Float -> Float -> Float
triangleArea a b c | isTriangle a b c = error "Not a triangle!"
                   | otherwise = sqrt(s * (s-a) * (s-b) * (s-c))
                      where s = (a+b+c)/2
