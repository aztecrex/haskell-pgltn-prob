module Main where

import PigLatin

main :: IO ()
main = do
  text <- getContents
  let newText = translate text
  putStr newText
