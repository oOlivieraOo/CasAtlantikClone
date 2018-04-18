#ifndef PASSERELLE_H
    #define PASSERELLE_H

#include "collEquipement.h"
#include "collBatVoyageur.h"
class Passerelle
{
	public:
        static CollectionEquipement chargerLesEquipements(int unIdBateau); // Retourne la collection des Equipements du bateau dont l'identifiant est passé en paramètre.
        static CollectionBateauVoyageur chargerLesBateauxVoyageurs(); /*Instancie et retourne une collection d’objets de la classe BateauVoyageur,
		à partir des données lues dans la base de données "dbBat". Cette méthode instancie également
		la collection lesEquipements de chaque objet de la classe BateauVoyageur.*/
		
};
#endif
