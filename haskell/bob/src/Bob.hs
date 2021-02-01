module Bob (responseFor) where

import Data.Char ( isAlpha, isSpace, isUpper )

responseFor :: String -> String
responseFor s
  | allSpaces                = "Fine. Be that way!"
  | isShouting && isQuestion = "Calm down, I know what I'm doing!"
  | isShouting               = "Whoa, chill out!"
  | isQuestion               = "Sure."
  | otherwise                = "Whatever."
  where
    allSpaces  = all isSpace s
    isQuestion = last (filter (not . isSpace) s) == '?'
    allUpper   = all isUpper . filter isAlpha
    anyAlpha   = any isAlpha
    isShouting = allUpper s && anyAlpha s
