module CatSay (catSay) where

catSay :: String -> IO ()
catSay s = mapM_ putStrLn $ headerLines ++ content ++ catLogoSay
  where
    headerLines = [
      "       " ++ replicate 56 '_',
      "      /" ++ replicate 56 ' ' ++ "\\"
      ]
    content = map padLine (wrapLine 56 s)

padLine :: String -> String
padLine s = ("     | " ++) s ++ rPad ++ "|"
  where
    rPad = replicate padWidth ' '
    padWidth = 60 - 2 - length s - 1 - 1

catLogoSay :: [String]
catLogoSay = [
  "     \\____       _____________________________________________/",
  "          \\    /",
  "           \\  /",
  "            \\/",
  "         ／＞　 フ",
  "        | 　_　_| ",
  "      ／` ミ＿xノ ",
  "     /　　　　 |",
  "    /　 ヽ　　 ﾉ",
  "    │　　|　|　|",
  "／￣|　　 |　|　|",
  "(￣ヽ＿_ヽ_)__)",
  "＼二)"
  ]

wrapLine :: Int -> String -> [String]
wrapLine width s = go (words s) 0 [] []
  where
    go :: [String] -> Int -> [String] -> [String] -> [String]
    go [] _ line acc = acc ++ [unwords line]
    go (w:ws) n line acc
      | n + (length w) + length line > width =
          go (w:ws) 0 [] (acc ++ [unwords line])
      | otherwise =
          go ws (n + length w) (line ++ [w]) acc
