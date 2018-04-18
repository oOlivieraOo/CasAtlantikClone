#ifndef PDF_H
    #define PDF_H
#include <QPdfWriter>
#include <QTextDocument>
#include <QString>
#include <iostream>
#include "bateau.h"

using namespace std;

class PDF
{
private:
    QString codeHtml;
    QTextDocument monTextDocument;
    QPdfWriter* monPdfWriter;
	public:
        PDF(QString nomDocument); // Constructeur de la classe. Crée le document PDF vierge "nomDocument"
        void ecrireTexte(QString leTexte); // Écrit le contenu de la chaîne de caractères leTexte dans le document PDF
        void chargerImage(QString chemin); // Insère dans le document l'image dont le chemin d'accès est passé en paramètre
        void imprimerEtFermer(); // Ferme le document
};
#endif
