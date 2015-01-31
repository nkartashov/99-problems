module Task12 where

import Task11

decodeModified = concatMap helper
  where
    helper (Single a) = [a]
    helper (Multiple i a) = replicate i a
