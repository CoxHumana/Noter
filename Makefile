
build-vals:
	cd WahlinVals; lilypond score.ly;
build-hymne:
	cd LieHymne; lilypond score.ly;
build-starwars:
	cd StarWars; lilypond score.ly;
build-seddel:
	cd Spiseseddelen; lilypond score.ly;

build-all: build-vals build-hymne build-starwars build-seddel
