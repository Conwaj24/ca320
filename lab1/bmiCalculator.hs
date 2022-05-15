#!/bin/env ghci

data BMI = VSUnderweight | SUnderweight | Underweight | Normal | Overweight | MObese | SObese | VSObese deriving (Enum, Show)
type Person = (Float, Float)

bmiCalculator :: Person -> BMI
bmiCalculator (w,h) | bmi < 15 = VSUnderweight
                    | bmi < 16 = SUnderweight
                    | bmi < 18.5 = Underweight
                    | bmi < 25 = Normal
                    | bmi < 30 = Overweight
                    | bmi < 35 = MObese
                    | bmi < 40 = SObese
                    | otherwise = VSObese
                      where bmi = w / (h * h)
