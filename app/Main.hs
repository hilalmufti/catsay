module Main where

import System.Environment (getArgs)
import CatSay (catSay)

logo :: [String]
logo =[
  "               _                       ",
  "              ( )_                     ",
  "   ___    _ _ | ,_)  ___    _ _  _   _ ",
  " /'___) /'_` )| |  /',__) /'_` )( ) ( )",
  "( (___ ( (_| || |_ \\__, \\( (_| || (_) |",
  "`\\____)`\\__,_)`\\__)(____/`\\__,_)`\\__, |",
  "                                ( )_| |",
  "                                `\\___/'"
  ]

-- TODO: Abstract this
usage :: [String]
usage = [
  "usage: catsay [-h] msg",
  "",
  "catsay is a configurable talking cat",
  "",
  "Options:",
  "  -h, --help  Show this help message and exit",
  "",
  "Arguments:",
  "  msg         Message for the cat to say. Should be a string surrounded by \"",
  "",
  "Examples:",
  "  catsay miao miao miao      -- make the cat say \"miao miao miao\"",
  "  catsay hi claire           -- make the cat say \"hi claire\"",
  "  catsay -h                  -- show this help and exit",
  ""
  ] ++ logo


main :: IO ()
main = do
  args <- getArgs
  case args of
    ["-h"] -> mapM_ putStrLn usage
    ["--help"] -> mapM_ putStrLn usage
    [s] -> catSay s
    _ -> mapM_ putStrLn usage
