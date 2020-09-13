# Haskell Notes

## HouseKeeping

### Installation

See the terminal commands below. Ran both. Runnig Either showld work.

1. Part 1: Install
   1. [Way 1](https://www.haskell.org/downloads/linux/)
   2. [Way 2](https://docs.haskellstack.org/en/stable/install_and_upgrade/)
2. Part 2: [Stack update](https://docs.haskellstack.org/en/stable/install_and_upgrade/#ubuntu)

```bash

1. Way 2
sudo add-apt-repository -y ppa:hvr/ghc
sudo apt-get update
// This did not work, XXX and YYY probably need to be version nos
sudo apt-get install -y cabal-install-XXX ghc-YYY
// Ran this instead, worked seemed to have mostly latest major versions. Not the latest minor and patches though
sudo apt-get install -y cabal-install ghc

2. Way 1
curl -sSL https://get.haskellstack.org/ | sh

3. Update
stack upgrade

4. Checking Versions of everything
stack --version
ghc --version
cabal --version
ghci --version

```

2. stack is the toll that sets up a boiler-plater haskell project

```bash
stack new folderName
```
