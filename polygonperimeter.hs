polygonperimeter :: (Floating a) => a-> a-> a
polygonperimeter sides circumradius  = sides*circumradius*2*sin(pi/sides) 

main = do
  input <- getLine
  let [sides, circumradius] = map (\x -> read x::Double) (words input)
  putStrLn (show (polygonperimeter sides circumradius)::String)
