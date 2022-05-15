#!/bin/env ghci
module Main where

flex :: [Char] -> [Char] -> [Char]
flex flexer flexee = flexer ++ " flexes on " ++ flexee

main = do print (flex "Jordan" "Gytis")
