#ifndef COLLECTIONBATEAUVOYAGEUR_H
    #define COLLECTIONBATEAUVOYAGEUR_H
#include <vector>
#include "bateauVoyageur.h"
class CollectionBateauVoyageur
{
	private:
		vector<BateauVoyageur> vectBatVoyageur;

	public:
		int cardinal(); // Renvoie le nombre d'objets de la collection.
		BateauVoyageur obtenirObjet(int unIndex); // Retourne l'objet d'index unIndex, le premier objet de la collection a pour index 1.
		void ajouter(BateauVoyageur unObjet);
};
#endif
