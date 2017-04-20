# Card_game
Card guessing game using haskell

The Game
For this project, you will implement a two-player logical guessing game. Two players face each other, each with a complete standard deck of western playing cards (without jokers). One player will be the answerer and the other is the guesser. The answerer begins by selecting some number of cards from his or her deck without showing the guesser. These cards will
form the answer for this game. The aim of the game is for the guesser to guess the answer.

Once the answerer has selected the answer, the guesser chooses the same number of cards from his or her deck to form the guess and shows them to the answerer.The answerer responds by telling the guesser these ve numbers as feedback for the guess:

1. How many of the cards in the answer are also in the guess (correct cards).
2. How many cards in the answer have rank lower than the lowest rank in the guess (lower ranks). Ranks, in order from low to high, are 2{10, Jack, Queen, King, and Ace.
3. How many of the cards in the answer have the same rank as a card in the guess (correct ranks). For this, each card in the guess is only counted once. That is, if the answer has two queens and the guess has one, the correct ranks number would be 1, not 2. Likewise if there is one queen in the answer and two in the guess.
4. How many cards in the answer have rank higher than the highest rank in the guess (higher ranks).
5. How many of the cards in the answer have the same suit as a card in the guess, onlycounting a card in the guess once (correct suits). For example, if the answer has twoclubs and the guess has one club, or vice versa, the correct suits number would be 1,not 2.

Note that the order of the cards in the answer and the guess is immaterial, and that, since
they come from a single deck, cards cannot be repeated in either answer or guess.
The guesser then guesses again, and receives feedback for the new guess, repeating the
process until the guesser guesses the answer correctly. The object of the game for the guesser
is to guess the answer with the fewest possible guesses.
