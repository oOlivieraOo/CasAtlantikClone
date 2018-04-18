#include "bateau.h"
#include <sstream>
string Bateau::versChaine()
{
	stringstream resultat;
	resultat << "Nom du bateau : " << nomBat << endl;
	resultat << "Longueur du bateau : " << longueurBat << " mètres" << endl;
	resultat << "Largeur du bateau : " << largeurBat << " mètres" << endl;
	return resultat.str();
}
Bateau::Bateau(string unId, string unNom, float uneLongueur, float uneLargeur)
{
	idBat = unId;
	nomBat = unNom;
	longueurBat = uneLongueur;
	largeurBat = uneLargeur;
}