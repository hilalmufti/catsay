module Main where

import System.IO
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
  "  msg         Message for the cat to say.",
  "",
  "Examples:",
  "  catsay miao miao miao            -- make the cat say \"miao miao miao\"",
  "  catsay hi claire                 -- make the cat say \"hi claire\"",
  "  catsay -h                        -- show this help and exit",
  "  echo \"miao miao miao\" | catsay   -- make the cat say \"miao miao miao\" via pipe",
  ""
  ] ++ logo

main :: IO ()
main = do
  args <- getArgs
  case args of
    []         -> displayMsg
    ["-h"]     -> mapM_ putStrLn usage
    ["--help"] -> mapM_ putStrLn usage
    _          -> catSay (unwords args)
  where
    displayMsg :: IO ()
    displayMsg = do
      input <- getContents'
      catSay input
