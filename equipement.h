#ifndef EQUIPEMENT_H
    #define EQUIPEMENT_H
#include <iostream>
#include <QString>

using namespace std;

class Equipement
{
	private:
        QString idEquip;
        QString libEquip;

	public:
        Equipement(QString unId, QString unLib); // Constructeur de la classe.
        QString versChaine(); // Retourne sous la forme d'une chaîne la valeur de l'attribut libEquip de la classe.
};
#endif
