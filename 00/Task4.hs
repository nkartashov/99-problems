myLength = helper 0
  where
    helper result [] = result
    helper result (x:xs) = helper (succ result) xs

myLength' = sum . map (const 1)
