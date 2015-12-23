import PigLatin

main :: IO ()
main = do
  putStr "\n"
  mapM_ (\x -> print x) [test1, test2, test3, test4, test5, test6, test7]

test1 :: Bool
test1 = translate "the quick brown fox jumps over th3" == "ethay uickqay ownbray oxfay umpsjay overyay th3"

test2 = translate "one1 2two" == "one1 2two"

test3 = translate "thought x pig" == "oughtthay xay igpay"

test4 = translate "at over" == "atyay overyay"

test5 = translate "one, two, three.\nnext  line." == "oneyay, otway, eethray.\nextnay  inelay."

test6 = translate "QUICK BROWN FOX OWEL" == "UICKQAY OWNBRAY OXFAY OWELYAY"

test7 = translate "The Owl tHe thEe Www" == "Ethay Owlyay ethay Eethay Wwway"
