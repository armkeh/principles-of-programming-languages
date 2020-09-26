:- consult(h2).

:- initialization(writeln('Timing prime palindrome with a beastly prime palindrome')).
:- initialization(time(primePalindrome(700666007))).
