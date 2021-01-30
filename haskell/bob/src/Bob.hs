module Bob (responseFor) where

import Data.Char ( isAlpha, isSpace, isUpper )

responseFor :: String -> String
responseFor s
  | allSpaces s                    = "Fine. Be that way!"
  | allAlphasUpper s && isQuestion = "Calm down, I know what I'm doing!"
  | allAlphasUpper s               = "Whoa, chill out!"
  | isQuestion                     = "Sure."
  | otherwise                      = "Whatever."
  where
    allSpaces        = all isSpace
    isQuestion       = last (filter (not . isSpace) s) == '?'
    allUpper         = all isUpper . filter isAlpha
    anyAlpha         = any isAlpha
    allAlphasUpper s = allUpper s && anyAlpha s
