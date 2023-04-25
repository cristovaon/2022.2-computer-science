exampleList = [1,2,3,4]

-- exampleList !! 1 = 2
getByIndex:: [t] -> Int -> t
getByIndex (h:t) 0 = h
getByIndex (h:t) index = getByIndex t (index-1)

-- head exampleList = 1
getHead:: [t] -> t
getHead (h:t) = h

-- tail exampleList = [2,3,4]
getTail:: [t] -> [t]
getTail (h: t) = t

-- last exampleList = 4
getLast:: [t] -> t
getLast (h: []) = h
getLast (h: t) = getLast t

-- length exampleList = 4
getLength:: [t] -> Int
getLength [] = 0
getLength (h: t) = 1 + getLength t

contains:: [Int] -> Int -> Bool
contains [] t = False
contains (h: t) element = if element == h then True
  else contains t element
