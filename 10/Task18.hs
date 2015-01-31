module Task18 where

import Task17

slice l i k | i > 0 = fst $ (flip split) (k - i + 1) $ snd $ split l $ pred i
