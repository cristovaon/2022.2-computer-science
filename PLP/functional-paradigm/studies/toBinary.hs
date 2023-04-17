toBinary:: Int -> String
toBinary 0 = ""
toBinary x
  | mod x 2 == 1 = toBinary (div x 2) ++ "1"
  | otherwise = toBinary (div x 2) ++ "0"

