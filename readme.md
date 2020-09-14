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

2. stack is the tool that sets up a boiler-plater haskell project

```bash
stack new folderName
```

### Haskell General Notes

1. See the `stack.yaml` file

#### The Parts

1. Resolver = chooses the version of compiler to use. Can see after running `stack new`. <br/> See `stack.yaml` file for your version

2. ghci = Interpreter for haskell

3. the prelude is the library that contains all the built in functions.** Do not have to import it**.

#### Boilerplate Breakdown & How to run

1. The main file, `Main.hs`, is in the `/app` folder. Basically the root of the project.

1. Can test individual files from terminals using `stack ghvi pathToFile`, which brings up the ghci CLI

```bash
stack ghci src/Lib.hs
Lib> add 2 5
7
Lib>
```

## Syntax

1.  Indentation matters
2.  All function and variable name MUST start with small letter
3.  By Convention list names end with s for some readom (I am not doing that here yet)

## Functions

Since haskell is a purely functional programming language, here are some General Notes on [Functional Programming](https://github.com/SSaquif/JS-NoteBook). Note that **Javascript is not a purely functional programming language**, It is multi paradigm. So there are soome things JS allows that a purely fp language would not, esp when it comes to immutability. See notes for more info

The print function is `putStrLn`

x,y and z are function parameters in the table below

| Generally                    | Haskell                       |
| ---------------------------- | ----------------------------- |
| func1(x)                     | funcName x                    |
| funcName(x, y)               | funcName x y                  |
| func1Name(func2Name(x y))    | func1Name (func2Name x y)     |
| func1Name(x, func2Name(y z)) | func1Name x (func2Name y z)   |
| func1Name(x)func2Name(y z))  | func1Name x \* func2Name y z) |

### Infix Notation

```haskell
list1 = [1 2 3]
-- regular
div (sum list1) (length list1)
-- Infix Notation
sum list1 `div` length list1
```

## Let & Where

1. Let & Where are interchangable. Can use either
2. They are used to define variables in a function's local scope
3. In the let and where portion, order of defining the variables do not matter
4. Example: let

```haskell
doublePowered num =
  let double = 2 * num
   in double * double
```

5. Example: where

```haskell
doublePowered2 num =
  double * double
  where
    double = 2 * num
```

## Implicit Grouping Syntax vs Explicit Grouping Syntax

1. Implicit Syntax: Uses Indentation

```haskell
a =b +c
   where
      b=1
      c=2
```

2. Explicit Syntax: Uses Brackets & Semi-Colon

```haskell
a =b +c
   where
      {b=1;
       c=2} --do not need semi colon on the last variable
```

## Data Structures

### 1. Lists

Created by putting values inside square brackets, [1,5,3,4]
<br/>Similar syntax to arrays in other languages

1. Creating a list

```haskell
[1,2,3,4,5]
[1..5] -- [1,2,3,4,5]

--function creating a list of numbers
creatList start fin = [start..fin]
creatList 10 15 -- returns [10,11,12,13,14,15]
```

2. List Functions

   1. length
   2. sum
   3. product
   4. [foldr](https://stackoverflow.com/questions/1757740/how-does-foldr-work)
   5. map: returns a list
   6. filter: returns list

```haskell
length  [1,2,4] --3
sum  [1,2,4] --7
product [1,2,4] --8
```
