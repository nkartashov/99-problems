myButLast (_:y:[]) = y
myButLast [] = error "List is empty"
myButLast [x] = error "List is too small"
myButLast (_:xs) = myButLast xs
