:- begin_tests(h2).
:- include(h2).


% isPrime tests

test(five_is_prime, nondet) :- isPrime(5).
test(sixty_seven_is_prime, nondet) :- isPrime(67).
% The \+ means “it is not provable that.”
test(four_is_not_prime, nondet) :- \+ isPrime(4).
test(one_hundred_is_not_prime, nondet) :- \+ isPrime(100).
% Also test there are no “bad” proofs that primes are not prime.
test(not_five_is_not_prime, nondet) :- \+ not(isPrime(5)).



% isDigitList tests

test(digit_list_12345, nondet) :- isDigitList(12345,[5,4,3,2,1]).
test(not_digit_list_12345_grouped, nondet) :- \+ isDigitList(12345,[5,43,2,1]).



% isPalindrome tests

test(empty_palindrome, nondet) :- isPalindrome([]).
test(pair_palindrome, nondet) :- isPalindrome([1,1]).
test(steponnopets_palindrome, nondet) :- isPalindrome([s,t,e,p,o,n,n,o,p,e,t,s]).
test(palindrome_elements_atomic, nondet) :- \+ isPalindrome([12, 21]).



% primePalindrome tests

test(eleven_prime_palindrome, nondet) :- primePalindrome(11).
test(nine_twenty_nine_prime_palindrome, nondet) :- primePalindrome(929).
test(not_thirteen_prime_palindrome, nondet) :- \+ primePalindrome(13).
test(not_twenty_two_prime_palindrome, nondet) :- \+ primePalindrome(22).
