module Task10 where
import Task9

encode :: (Eq a) => [a] -> [(Int, a)]
encode = map helper . pack
  where 
    helper l@(x:_) = (length l, x)
