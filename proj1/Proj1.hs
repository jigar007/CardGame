
module Proj1 (feedback, initialGuess, nextGuess, GameState) where
import Card
import Data.List

data GameState = Nothi


initialGuess :: Int -> ([Card],GameState)
initialGuess card_number
           | card_number == 2 = ([Card Club R4, Card Diamond R9], Nothi)
           | card_number == 3 = ([Card Club R4, Card Diamond R9, Card Diamond R7], Nothi)

nextGuess :: ([Card],GameState) -> (Int,Int,Int,Int,Int) -> ([Card],GameState)
nextGuess ([Card Club R2, Card Diamond R7], Nothi) (1,1,1,1,1) = ([Card Club R2, Card Diamond R7], Nothi)


-- All Methods related to feedback donot touch
feedback :: [Card] -> [Card] -> (Int,Int,Int,Int,Int)
feedback answer guess = (correctCards answer guess,lessGuess answer guess,sameGuess answer guess,greterGuess answer guess ,sameSuite answer guess)

correctCards :: [Card] -> [Card] -> Int
correctCards answer guess = length (intersect answer guess)

lessGuess :: [Card] -> [Card] -> Int
lessGuess [] _ = 0
lessGuess (x:xs) ys
            | (rank x) < rank (minimum ys) = lessGuess xs ys + 1
            | otherwise = lessGuess xs ys

sameGuess :: [Card] -> [Card] -> Int
sameGuess answer guess = length (intersect (onlyRank guess) (onlyRank answer))

onlyRank :: [Card] -> [Rank]
onlyRank [] = []
onlyRank (x:xs) = (rank x):(onlyRank xs)

greterGuess :: [Card] -> [Card] -> Int
greterGuess [] _ = 0
greterGuess (x:xs) ys
              | (rank x) > rank (maximum ys) = greterGuess xs ys + 1
              | otherwise = greterGuess xs ys

sameSuite :: [Card] -> [Card] -> Int
sameSuite answer guess = length (intersect (onlySuit guess) (onlySuit answer))

onlySuit :: [Card] -> [Suit]
onlySuit [] = []
onlySuit (x:xs) = (suit x):(onlySuit xs)

--minFromGuess :: (Ord a) => [a] -> a
--minFromGuess (x:y:xs) = if x < y then minFromGuess(x:xs) else minFromGuess(y:xs)

