Scrabble
========

Write a program that, given a word, computes the scrabble score for that word.

Letter Values

Letter                           Value
A, E, I, O, U, L, N, R, S, T       1
D, G                               2
B, C, M, P                         3
F, H, V, W, Y                      4
K                                  5
J, X                               8
Q, Z                               10

Example: "cabbage" should be scored as worth 14 points:

3 points for C
1 point for A, twice
3 points for B, twice
2 points for G
1 point for E

And to total:

3 + 2*1 + 2*3 + 2 + 1
= 3 + 2 + 6 + 3
= 5 + 9
= 14

Extensions
----------

You can play a :double or a :triple letter.
You can play a :double or a :triple word.

Outline for West End
--------------------

- Implement code to make initial tests pass
- Write tests and implementation code for double and triple word scores. Do so
  without introducing any new conditional code. This will require injecting the
  multiplier with a default value.
- Implement score without any local variables. Hint: Block-scoped variables are
  fine.
