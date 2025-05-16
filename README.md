# catsay 

```
       ________________________________________________________
      /                                                        \
     | hello meow                                              |
     \____       _____________________________________________/
          \    /
           \  /
            \/
         ／＞　 フ
        | 　_　_|
      ／` ミ＿xノ
     /　　　　 |
    /　 ヽ　　 ﾉ
    │　　|　|　|
／￣|　　 |　|　|
(￣ヽ＿_ヽ_)__)
＼二)
```

catsay is a configurable talking cat, similar to
[cowsay](https://github.com/piuccio/cowsay/tree/master) and
[haskell-say](https://github.com/periodic/haskell-say#readme).

## Usage
```
catsay hello meow
```
or
```
echo "miao miao miao" | catsay
```
For more information, run `catsay -h`.

## Usage as a library 
catsay can be used as a standard Haskell library via the `catSay` function.

``` haskell
module CatSay (catSay) where

main :: IO ()
main = catSay "hello from library"
```

```
       ________________________________________________________
      /                                                        \
     | hello from library                                      |
     \____       _____________________________________________/
          \    /
           \  /
            \/
         ／＞　 フ
        | 　_　_|
      ／` ミ＿xノ
     /　　　　 |
    /　 ヽ　　 ﾉ
    │　　|　|　|
／￣|　　 |　|　|
(￣ヽ＿_ヽ_)__)
＼二)
```


## Install

To install, you need Haskell/Cabal. 

### Step 1. Install Haskell/Cabal (skip this if they're already installed)

We use [GHCup](https://www.haskell.org/ghcup/) to install Haskell:

For Linux, macOS, FreeBSD or WSL2, run this in a terminal:
```bash
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```

For Windows, run this in a PowerShell session:
``` bash
Set-ExecutionPolicy Bypass -Scope Process -Force;[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; try { & ([ScriptBlock]::Create((Invoke-WebRequest https://www.haskell.org/ghcup/sh/bootstrap-haskell.ps1 -UseBasicParsing))) -Interactive -DisableCurl } catch { Write-Error $_ }
```

### Step 2. Clone and install
```
git clone https://github.com/hilalmufti/catsay.git
cd catsay
cabal update
cabal build
cabal install
```

### Step 3. Verify installation
```
catsay -h
```
