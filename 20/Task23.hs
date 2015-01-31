module Task23 where

import System.Random
import Data.List

rnd_select s n = do
  rndGen <- getStdGen
  return $ myFilterer s (sort $ take n $ randomRs (1, length s) rndGen)

myFilterer :: [a] -> [Int] -> [a]
myFilterer s = fst . foldr helper ([], (zip s [1..]))
  where
    helper :: Int -> ([a], [(a, Int)]) -> ([a], [(a, Int)])
    helper e (res, source) = ((newElement:res), cleanList)
      where
        newElement :: a
        newElement = fst $ head cleanList
        cleanList :: [(a, Int)]
        cleanList = dropWhile (\(f, s) -> e /= s) source
