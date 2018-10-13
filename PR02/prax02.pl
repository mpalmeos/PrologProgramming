%---Teadmusbaas---
married(anne,vello).
married(jaana, mart).

mother(hannes, jaana).
mother(anne, jaana).
mother(evelin,anne).
mother(martin, anne).

female(anne).
female(evelin).
female(jaana).

male(vello).
male(martin).
male(mart).
male(hannes).

parent(Laps, Vanem):-
	mother(Laps, Vanem); father(Laps, Vanem).

father(Laps, Isa):-
	mother(Laps, Ema),
	married(Ema, Isa).
	
brother(Laps, Vend):-
	mother(Laps, Ema),
	mother(Vend, Ema),
	Vend \= Laps,
	male(Vend).

sister(Laps, Sis):-
	mother(Laps, Ema),
	mother(Sis, Ema),
	Sis \= Laps,
	female(Sis).
	
uncle(Laps, Onu):-
	parent(Laps, Vanem),
	brother(Vanem, Onu).

aunt(Laps, Aunt):-
	parent(Laps, Vanem),
	sister(Vanem, Aunt).

grandfather(Laps, GF):-
	parent(Laps, Vanem),
	father(Vanem, GF).

grandmother(Laps, GM):-
	parent(Laps, Vanem),
	mother(Vanem, GM).