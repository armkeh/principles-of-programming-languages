% Part 1, prime checker

hasDivisorLessThanOrEqualTo(_,1) :- !, false.
hasDivisorLessThanOrEqualTo(X,Y) :- 0 is X mod Y, !.
hasDivisorLessThanOrEqualTo(X,Y) :- Z is Y - 1, hasDivisorLessThanOrEqualTo(X,Z).

isPrime(X) :- X < 2, !, false.
isPrime(2) :- !.
isPrime(X) :- not(hasDivisorLessThanOrEqualTo(X,X-1)).



% Part 2, number and lists of their digits.

% Note that the list may have trailing zeroes
% by this definition.
% This is not forbidden by the question.
isDigitList(_,[]) :- false.
isDigitList(X,[X]) :- member(X,[1,2,3,4,5,6,7,8,9,0]).
% I include some more documentation here to explain
% how this can solve the problem “both ways”;
% that is, it will work no matter which argument is unknown.
isDigitList(X,[H|T]) :-
  isDigitList(Y,T),
  % Using member to restrict the value of H avoids
  % uninstantiated errors we would get if we tried to use
  % less than, etc., while H is unknown.
  member(H,[1,2,3,4,5,6,7,8,9,0]),
  % This "is" statement is carefully put together
  % so that only one argument is ever unknown.
  % This also prevent uninstantiated errors.
  X is Y * 10 + H.


% Part 3, palindromic lists

dropLast([_],[]). % The last element is dropped.
dropLast([H|T],[H|T2]) :-
  % Aside from the base case above, the lists must match.
  dropLast(T,T2).

isPalindrome([]). % An empty list is a palindrome.
isPalindrome([_]). % Any singleton is a palindrome.
isPalindrome([H|T]) :-
  last(T,H), % H must also be the last element of T.
  dropLast(T,TN),
  isPalindrome(TN). % check the remainding elements.



% Part 4, Prime palindromes

% Just put together our predicates from above.
primePalindrome(X) :-
  isPrime(X),
  isDigitList(X,Digits),
  isPalindrome(Digits).
