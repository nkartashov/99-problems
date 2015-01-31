myLast [] = error "List is empty"
myLast (x:[]) = x
myLast (_:xs) = myLast xs
