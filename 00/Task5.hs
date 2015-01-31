myReverse = helper []
  where
    helper result [] = result
    helper result (x:xs) = helper (x:result) xs
