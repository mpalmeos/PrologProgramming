female(milde).
female(ilona).
female(maire).
female(helena).
female(maie).
female(tiiu).
female(asta).
female(helme).
female(olga).
female(nastja).
female(varja).
female(zhanna).
female(ninel).

male(jaan).
male(reiljan).
male(tarmo).
male(ivar).
male(olav).
male(oliver).
male(romet).
male(rasmus).
male(kalev).
male(juri).
male(andrei).

married(maire, jaan).
married(helme, reiljan).
married(tiiu, olav).
married(olga, kalev).
married(helena, rasmus).
married(ninel, juri).
married(zhanna, andrei).

mother(milde, ilona).
mother(ilona, maire).
mother(helena, olga).
mother(maie, olga).
mother(maire, helme).
mother(tiiu, helme).
mother(asta, helme).
mother(kalev, helme).
mother(oliver, helena).
mother(romet, helena).
mother(tarmo, tiiu).
mother(ivar, tiiu).
mother(nastja, zhanna).
mother(varja, zhanna).
mother(olga, ninel).
mother(andrei, ninel).

parent(Laps, Vanem):-
	mother(Laps, Vanem); 
	father(Laps, Vanem).

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
	
greatgrandfather(Laps, GGF):-
	parent(Laps, F_1),
	parent(F_1, F_2),
	father(F_2, GGF).

greatgrandmother(Laps, GGM):-
	parent(Laps, M_1),
	parent(M_1, M_2),
	mother(M_2, GGM).