:- consult(h2).

:- initialization(writeln('Timing prime palindrome')).
:- initialization(time(primePalindrome(111010111))).
