data NestedList a = Elem a | List [NestedList a]

instance Functor NestedList where
  fmap f (Elem a) = Elem $ f a
  fmap f (List xs) = List $ fmap (fmap f) xs

flatten :: NestedList a -> [a]
flatten (Elem a) = [a]
flatten (List as) = concat $ fmap flatten as
