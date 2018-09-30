#HW5 Makefile Alyssa Atkinson

game: main.o othello.o game.o
	g++ -o game main.o othello.o game.o

main.o: main.cc othello.h game.h piece.h colors.h
	gcc -c main.cc

othello.o: othello.cc othello.h game.h piece.h colors.h
	gcc -c othello.cc

game.o: game.cc game.h
	gcc -c game.cc

build: game

archive:
	tar czvf HW5.tgz colors.h game.cc game.h main.cc othello.cc othello.h piece.h Makefile
all: 
	make build
	make archive
clean:
	-rm *.o
	-rm game