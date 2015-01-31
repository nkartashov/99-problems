module Task22 where

range i j = take (j - i + 1) $ drop (pred i) [1..]
