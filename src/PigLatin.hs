module PigLatin
    (translate, unpack
    ) where
import Data.Char (isAscii, isLetter, isSpace, isPunctuation)
import Data.List.Split (whenElt, split)

translate :: String -> String
translate = concatMap translate1 . unpack

unpack :: String -> [String]
unpack = split (whenElt (\x -> isSpace x || isPunctuation x))

translate1 :: String -> String
translate1 x
  | null x = x
  | (not . allAsciiLetters) x = x
  | isVowel (head x)  = x ++ "yay"
  | (not . isVowel) (head x) =
      let (start,rest) = span (not . isVowel) x
       in rest ++ start ++ "ay"
  where
    isVowel z = z `elem` ("aeiouy" :: String)
    allAsciiLetters z = all (\l -> isAscii l && isLetter l) z
