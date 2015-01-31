elementAt [] _ = error "Empty list"
elementAt (x:_) 1 = x
elementAt (_:xs) n 
  | n < 1 = error "Index out of range"
  | otherwise = elementAt xs $ pred n
