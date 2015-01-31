module Task13 where

import Task11

encodeDirect :: (Eq a) => [a] -> [EncodeWrapper a]
encodeDirect = foldr helper []
  where
    helper :: (Eq a) => a -> [EncodeWrapper a] -> [EncodeWrapper a]
    helper x [] = [(Single x)]
    helper x l@((Single a):as)
      | x == a = (Multiple 2 a):as
      | otherwise = (Single x):l
    helper x l@((Multiple n a):as)
      | x == a = (Multiple (succ n) a):as
      | otherwise = (Single x):l

