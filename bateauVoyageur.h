#ifndef BATEAUVOYAGEUR_H
    #define BATEAUVOYAGEUR_H
#include "bateau.h"
#include "collEquipement.h"
#include "equipement.h"
#include <iostream>

using namespace std;

class BateauVoyageur : public Bateau
{
	private: 
		float vitesseBatVoy;
        QString imageBatVoy;
		CollectionEquipement listeEquipement;

	public:
        QString versChaine();
        QString getImageBatVoy();
        BateauVoyageur(QString unId, QString unNom, float uneLongueur, float uneLargeur, float uneVitesse, QString uneImage, CollectionEquipement uneCollectionEquip);

};
#endif
