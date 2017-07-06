
vals:
	cd WahlinVals; lilypond score.ly;
hymne:
	cd LieHymne; lilypond score.ly;
starwars:
	cd StarWars; lilypond score.ly;
seddel:
	cd Spiseseddelen; lilypond score.ly;

build-scores: vals hymne starwars seddel

book: 
	cd Book; pdflatex main.tex; pdflatex main.tex

book-all: build-scores book

update-vals: vals book
update-hymne: hymne book
update-starwars: starwars book
update-seddel: seddel book

