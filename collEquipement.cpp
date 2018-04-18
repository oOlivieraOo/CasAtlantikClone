#include "collEquipement.h"

int CollectionEquipement::cardinal()
{
	return vectEquipement.size();
}
Equipement CollectionEquipement::obtenirObjet(int unIndex)
{
	return vectEquipement[unIndex - 1];
}
void CollectionEquipement::ajouter(Equipement unObjet)
{
	vectEquipement.push_back(unObjet);
}