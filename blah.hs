import Data.Complex

mandelbrot a = iterate (\z -> z^2 + a) 0 !! 1000

main = mapM_ putStrLn [[if magnitude (mandelbrot (x :+ y)) < 2 then '*' else ' ' | x <- [-2, -1.9999999 .. 1]]  | y <- [1, 0.95 .. -1]]