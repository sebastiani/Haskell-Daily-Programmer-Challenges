import qualified Data.List as List
main :: IO ()
main = do
  line <- getLine
  let (cs, vs) = List.partition ( `elem` "aeiou") (filter (/= ' ') line)
  putStr $ cs ++ "\n" ++ vs ++ "\n"
