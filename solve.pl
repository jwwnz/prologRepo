% Jwon117 Assignment 3, Question 2, relevant comments have been included below.

% Instructions: to run, type 'solve(X).' into prolog.

% The following code has been specified in Q2 to be added in The following is allowing any order
subListOf([],[]). % A - base case for the subListOf predicate
subListOf([X|L],[X|S]) :-
      subListOf(L,S). % B - the first element of the left list is equal to the first in the right list.

subListOf(L,[_|S]):-
      subListOf(L,S). % however, if they are not equal we look at the rest of the list.

solve(X) :- % Solve predicate
      subListOf(X, [a,b,c,d]), % 1 - the gang list is a sublist of list of the suspects

      (length(X, Count), Count > 0), % 2 - at least one of the suspects in the list are empty

      not(member(a, X)), % 3 - 'a' was definitely innocent, thus the gang list should not contain 'a'

      (member(b, X) -> Count =2; not(member(b,X))), % 4 - if 'b' was guilty then he should have exactly one accomplice, thus the gang list should have 2 people if includes 'b'.

      (member(c, X) -> Count =3; not(member(c,X))). % 5 - if 'c' was guilty then he had exactly 2 accomplices, thus if 'c' is guilty then should contain exactly 3 people in the gang list.
