// Brock Ferrell
// CS2401
// November 23, 2015
// Project7

#include "game.h"
#include "othello.h"
using namespace main_savitch_14;


int main()
{
	Othello theGame;
	///@return restart the game and set up the game board
	theGame.restart();
	///@return run the game
	theGame.play();
}
