module Task11 where

import Task9

data EncodeWrapper a = Single a | Multiple Int a deriving Show

encodeModified :: (Eq a) => [a] -> [EncodeWrapper a]
encodeModified = map helper . pack
  where 
    helper [x] = Single x
    helper l@(x:_) = Multiple (length l) x

