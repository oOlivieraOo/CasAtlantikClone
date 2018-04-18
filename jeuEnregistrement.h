#ifndef JEUENREGISTREMENT_H
    #define JEUENREGISTREMENT_H
#include <QSqlDatabase>
#include <QSqlQuery>
#include <QSql>
#include <QVariant>

class JeuEnregistrement
{
	private:
		QSqlQuery maRequete;

	public:
        JeuEnregistrement(QString chaineSQL); // Constructeur de la classe. Positionne le curseur sur le premier enregistrement.
        bool suivant(); // Avance le curseur sur l’enregistrement suivant.
		bool fin(); // Indique si la marque de fin est atteinte.
        QVariant getValeur(QString nomChamp); /*Renvoie la valeur du champ nomChamp de l’enregistrement courant.
		Variant est un type	générique pouvant contenir tout type de valeur. On peut utiliser l’opérateur "+" pour
		concaténer des valeurs ou variables de type Chaîne ou Variant.*/
		void fermer(); // Ferme le document

};
#endif
