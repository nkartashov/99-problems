module Task19 where

rotate l n
  | n < 0 || n > (length l) = rotate l (mod n (length l))
  | otherwise = (drop n l) ++ (take n l)
