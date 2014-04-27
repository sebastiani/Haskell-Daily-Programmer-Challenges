import qualified Data.List as List

main :: IO()
main = do
  line <- getLine
  let [n, trunk, leaf] =  words input
      level = read n::Int
      thelevel = [x | x <- scanl1 (++) (replicate level leaf), length x `mod` 2 /= 0]
      trunksize = (level `div` 2)-1
  mapM_ putStrLn (formatter (level `div` 2) thelevels)
  putStrLn (foldl (++) (foldr (++) trunk (replicate trunksize " ")) (replicate trunksize " "))
formatter :: Int -> [String] -> [String]
formatter _ [x] = [x]
formatter level (x:xs) = (foldl (++) (foldr (++) x (replicate level " ")) (replicate level " ")):formatter (level-1) xs
