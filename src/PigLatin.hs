module PigLatin
    (translate
    ) where
import Data.Char (isAscii, isLetter)

translate :: String -> String
translate = unwords . map translate1 . words

translate1 :: String -> String
translate1 x
  | (not . allAsciiLetters) x = x
  | isVowel (head x)  = x ++ "yay"
  | (not . isVowel) (head x) =
      let (start,rest) = span (not . isVowel) x
       in rest ++ start ++ "ay"
  where
    isVowel z = z `elem` "aeiouy"
    allAsciiLetters z = all (\l -> isAscii l && isLetter l) z
