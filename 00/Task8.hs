compress [] = []
compress l = reverse $ helper [] l
  where
    helper [] (x:xs) = helper [x] xs
    helper res [] = res
    helper res@(x:_) (y:ys)
      | x == y = helper res ys
      | otherwise = helper (y:res) ys
