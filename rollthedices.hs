import System.Random

main = do
    input <- getLine
    let n = read (takeWhile (/= 'd') input)::Int
        m =  read (drop 1 (dropWhile (/='d') input ))::Int
    g <- newStdGen
    mapM_ (\x -> (putStr (" " ++ show(x::Int)))) (take n (randomRs(1, m) g))
    putStrLn ""
