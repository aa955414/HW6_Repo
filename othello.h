// Brock Ferrell
// CS2401
// November 23, 2015
// Project7

#ifndef OTHELLO_H
#define OTHELLO_H
#include "game.h"
#include "piece.h"
#include "colors.h"
#include <iostream>
using namespace std;

namespace main_savitch_14
{

class Othello: public game {
public:

	Othello() {}

	void display_status()const;
	///@return int
	int evaluate()const;
	///@return bool
	bool is_game_over()const;
	///@return bool
	///@param move
	bool is_legal(const string& move)const;
	///@param move
	void make_move(const string& move);
	void restart();
	void make_skips();
	void countingPieces();
	void whosTurn();
	//@return new Othello(*this)
	game* clone()const{return new Othello(*this);}
	///@param moves
	void compute_moves(std::queue<std::string>& moves)const;
	///@return who
	who winning()const;

protected:
	int black;
	int white;
	int skips;
	int openSpots;
	int b;
	int w;

private:
	piece gameBoard[8][8];
};
}

#endif


