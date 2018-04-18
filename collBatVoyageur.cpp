#include "collBatVoyageur.h"
#include "collEquipement.h"
int CollectionBateauVoyageur::cardinal()
{
	return vectBatVoyageur.size();
}
BateauVoyageur CollectionBateauVoyageur::obtenirObjet(int unIndex)
{
	return vectBatVoyageur[unIndex - 1];
}
void CollectionBateauVoyageur::ajouter(BateauVoyageur unObjet)
{
	vectBatVoyageur.push_back(unObjet);
}