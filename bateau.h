#ifndef BATEAU_H
    #define BATEAU_H

#include <iostream>
using namespace std;

class Bateau
{
	private:
		string idBat;
		string nomBat;
		float longueurBat;
		float largeurBat;

	public:
		Bateau(string unId, string unNom, float uneLongueur, float uneLargeur);
		string versChaine();
};
#endif
