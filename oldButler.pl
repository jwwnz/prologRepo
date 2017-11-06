% Jwon117 Assignment 3, Question 1

% Facts - these have been provided as oldButlerData.pl
:- discontiguous gender/2.
:- discontiguous age/2.
:- discontiguous married/1.
gender(mike, male).
married(mike).
age(mike, 68).
gender(john, male).
age(john, 60).
gender(frank, male).

% Rules -
oldButler(X) :-
  % over the age of 45.
  age(X, Y), (Y > 45),
  % unmarried
  not(married(X)),
  % man - nb this is superfluous for the example provided.
  gender(X, male).
