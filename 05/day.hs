data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday deriving (Enum, Show)
data Month = Jan | Feb | Mar | Apr | May | Jun | Jul | Aug | Sep | Oct | Nov | Dec deriving (Enum, Show)

date :: Int -> Int -> Int -> (Int, Month, Int)
date d m y = (d, toEnum m::Month, y)

divisable :: Int -> Int -> Bool
divisable a b = mod a b == 0

leap :: Int -> Bool
leap y = divisable y 4 && (not (divisable y 100) || divisable y 400)

