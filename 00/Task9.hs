module Task9 where

pack [] = []
pack l = helper [] l
  where
    helper [] (x:xs) = helper [[x]] xs
    helper res [] = reverse res
    helper ((x:xs):xxs) (y:ys)
      | x == y = helper ((y:x:xs):xxs) ys
      | otherwise = helper ([y]:(x:xs):xxs) ys
