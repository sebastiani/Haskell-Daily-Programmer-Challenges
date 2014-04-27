import qualified Data.List as List
sumthedigits :: Int -> String
sumthedigits number =  if length num == 1
                       then num
                       else sumthedigits(sum (map (\x -> read x::Int) (words (List.intersperse ' ' num))))
                       where num = show number::String
