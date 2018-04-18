#ifndef COLLECTIONEQUIPEMENT_H
    #define COLLECTIONEQUIPEMENT_H
#include <vector>
#include "equipement.h"
class CollectionEquipement
{
	private:
		vector<Equipement> vectEquipement;

	public:
		int cardinal(); // Renvoie le nombre d'objets de la collection.
		Equipement obtenirObjet(int unIndex); // Retourne l'objet d'index unIndex, le premier objet de la collection a pour index 1.
		void ajouter(Equipement unObjet);
};
#endif
