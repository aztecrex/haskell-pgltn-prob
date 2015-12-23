import PigLatin

main :: IO ()
main = mapM_ (\x -> print x) [test1, test2]

test1 :: Bool
test1 = translate "the quick brown fox jumps over" == "hetay uickqay rownay oxfay umpsjay overyay"

test2 = translate "one1" == "one1"
