module Lib
  ( someFunc,
    add,
  )
where

someFunc :: IO ()
someFunc = putStrLn "Sup"

add x y = x + y

double x = 2 * x

quadruple x = double (double x)

createList start fin = [start .. fin]

listProduct start fin = product [start .. fin]

doublePowered num =
  let double = 2 * num
   in double * double

doublePowered2 num =
  double * double
  where
    double = 2 * num