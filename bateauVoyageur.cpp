#include "bateauVoyageur.h"
#include <sstream>
#include <QString>
QString BateauVoyageur::versChaine()
{
	stringstream resultat;
	resultat << Bateau::versChaine() << endl;
	resultat << vitesseBatVoy << " noeud(s)" << endl;
	for (int numeroEquipement = 0; numeroEquipement < listeEquipement.cardinal(); numeroEquipement++)
	{
        resultat << "Liste des équipements du bateau : " << listeEquipement.obtenirObjet(numeroEquipement).versChaine().toStdString();
	}
    return QString(resultat.str().c_str());
}
BateauVoyageur::BateauVoyageur(QString unId, QString unNom, float uneLongueur, float uneLargeur, float uneVitesse, QString uneImage, CollectionEquipement uneCollectionEquip)
:Bateau ("unId", "unNom", 0, 0)
{
    vitesseBatVoy = uneVitesse;
    imageBatVoy = uneImage;
    listeEquipement = uneCollectionEquip;
}
QString BateauVoyageur::getImageBatVoy()
{
    return imageBatVoy;
}
