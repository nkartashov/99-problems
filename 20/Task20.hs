module Task20 where

removeAt = helper []
  where
    helper _ 1 [] = error "List is too short"
    helper result 1 (x:xs) = (x, (reverse result) ++ xs)
    helper result n (x:xs) = helper (x:result) (pred n) xs
