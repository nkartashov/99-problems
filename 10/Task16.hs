dropEvery l n = map snd $ filter ((\x -> mod x n /= 0) . fst) $ zip [1..] l
