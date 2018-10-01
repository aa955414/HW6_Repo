#HW6 Makefile Alyssa Atkinson

all: 
	make build
	make doc
	make archive

game: main.o othello.o game.o
	g++ -o game main.o othello.o game.o

main.o: main.cc othello.h game.h piece.h colors.h
	gcc -c main.cc

othello.o: othello.cc othello.h game.h piece.h colors.h
	gcc -c othello.cc

game.o: game.cc game.h
	gcc -c game.cc

build: game

doc: 
	doxygen Othello

archive:
	tar czvf HW5.tgz colors.h game.cc game.h main.cc othello.cc othello.h piece.h Makefile

clean:
	-rm *.o
	-rm game
	-rm .class
	-rm a.out
	-rm -r html
	-rm -r latex