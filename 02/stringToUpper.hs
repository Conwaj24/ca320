#!/bin/env ghci

import Data.Char(toUpper)

stringToUpper :: String -> String
stringToUpper [] = ""
stringToUpper s = toUpper (head s) : stringToUpper (tail s)
