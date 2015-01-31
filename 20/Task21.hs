module Task21 where

insertAt a as n = l ++ (a:r)
  where
    (l, r) = splitAt (pred n) as
