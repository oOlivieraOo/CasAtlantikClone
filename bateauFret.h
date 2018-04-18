#ifndef BATEAUFRET_H
    #define BATEAUFRET_H
#include "bateau.h"
class BateauFret : public Bateau
{
	private:
		string poidsMaxBatFret;

	public:
		BateauFret(string unId, string unNom, float uneLongueur, float uneLargeur, string unPoidsMaxBatFret);
};
#endif
