module Task17 where

split = helper []
  where
    helper l r 0 = (reverse l, r)
    helper l [] _ = error "List is too short"
    helper l (x:xs) n = helper (x:l) xs $ pred n
