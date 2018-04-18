#include <QSqlDatabase>
#include <QDebug>
#include <QApplication>
#include "PDF.h"
#include "passerelle.h"
#include "collBatVoyageur.h"
int main(int argc, char *argv[])
{
    QApplication a(argc, argv);



    QSqlDatabase db = QSqlDatabase::addDatabase("QMYSQL");
    db.setDatabaseName("casAtlantik");
    db.setHostName("localhost");
    db.setUserName("root");
    db.setPassword("passf005");
    if(db.open())
    {

       PDF monPdf("LeCatalogue.pdf");
       CollectionBateauVoyageur Atlantik=Passerelle::chargerLesBateauxVoyageurs();
       for (int numeroBateau=0; numeroBateau < Atlantik.cardinal(); numeroBateau++)
       {
           BateauVoyageur leBateau = Atlantik.obtenirObjet(numeroBateau);
           monPdf.ecrireTexte(leBateau.versChaine());
           monPdf.chargerImage(leBateau.getImageBatVoy());
       }
       monPdf.imprimerEtFermer();
    }
    else
    {
        qDebug()<<"base inaccessible";
    }
    return 0;

}
