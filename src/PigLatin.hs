module PigLatin
    (translate, unpack, translate1
    ) where
import Data.Char (isAscii, isLetter, isSpace, isPunctuation, isUpper)
import Data.List.Split (whenElt, split)

translate :: String -> String
translate = concatMap translate1 . unpack

unpack :: String -> [String]
unpack = split (whenElt (\x -> isSpace x || isPunctuation x))

translate1 :: String -> String
translate1 x
  | null x = x
  | (not . allAsciiLetters) x = x
  | isVowel (head x)  = x ++ suffixyay x
  | (not . isVowel) (head x) =
      let (start,rest) = span (not . isVowel) x
       in rest ++ start ++ suffixay x
  where
    isVowel z = z `elem` ("aeiouyAEIOUY" :: String)
    allAsciiLetters z = all (\l -> isAscii l && isLetter l) z
    allUpper z = all isUpper z
    suffixyay z = if (allUpper z) then "YAY" else "yay"
    suffixay z = if (allUpper z) then "AY" else "ay"
