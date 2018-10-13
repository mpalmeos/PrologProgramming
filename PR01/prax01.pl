inimene(sokrates).
inimene(platon).
inimene('Jaan').
inimene(uku).

jumal(uku).
jumal(taara).
jumal(zeus).
jumal(hades).

lind(peoleo).
lind(kana).
lind(vutt).
lind(rasvatihane).
lind(luik).
lind(hani).
lind(part).

lind(peoleo, kollane).
lind(peoleo, must).
lind(kana, valge).
lind(kana, pruun).
lind(kana, kirju).
lind(vutt, pruun).
lind(rasvatihane, kollane).
lind(rasvatihane, must).
lind(luik, valge).
lind(luik, must).

lendab(X):-
	lind(X).

surelik(X):- 
	inimene(X).

inimene_jumal(X):-
	write(X), (surelik(X), write(' on surelik'));
		(jumal(X), write(' on surematu')).

inimene_jumal(_):-
	write(' pole surelike ega surematute nimekirjas'), nl, !, fail.
	
lind_lendab(X):-
	write(X), (lendab(X), write(' lendab.')).

lind_lendab(_):-
	write(' pole lind'), nl, !, fail.