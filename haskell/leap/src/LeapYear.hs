module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear y
  = divisibleBy 4 && (not (divisibleBy 100) || divisibleBy 400)
  where
    divisibleBy x = y `rem` x == 0
