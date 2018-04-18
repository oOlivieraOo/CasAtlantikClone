#include "bateauFret.h"

BateauFret::BateauFret(string unId, string unNom, float uneLongueur, float uneLargeur, string unPoidsMaxBatFret)
:Bateau ("unId", "unNom", 0, 0)
{
	poidsMaxBatFret= unPoidsMaxBatFret;
}