#include "passerelle.h"
#include "jeuEnregistrement.h"
#include "PDF.h"
CollectionEquipement Passerelle::chargerLesEquipements(int unIdBateau)
{
    CollectionEquipement mesEquipements;
    JeuEnregistrement jeuDesEquipements("Select idEquip, libEquip From Equipement Inner join Equiper on Equipement.idEquip = Equiper.idEquip where Equiper.idBateau="+QString::number(unIdBateau));
    while(jeuDesEquipements.suivant())
    {
        QString leLibelle=jeuDesEquipements.getValeur("libEquip").toString();
        QString sonId=jeuDesEquipements.getValeur("idEquip").toString();

        Equipement nouvelEquipement(sonId,leLibelle);
        mesEquipements.ajouter(nouvelEquipement);

    }
    return mesEquipements;
}

CollectionBateauVoyageur Passerelle::chargerLesBateauxVoyageurs()
{
    CollectionBateauVoyageur resultat;
    JeuEnregistrement jeuDesBateaux("Select idBateau, libelleBat, longueur, largeur, vitesse, type From Bateau where type = 'v'");
    while(jeuDesBateaux.suivant())
    {
        QString nomBateau=jeuDesBateaux.getValeur("libelleBat").toString();
        QString idBateau=jeuDesBateaux.getValeur("idBateau").toString();
        float laLongueur=jeuDesBateaux.getValeur("uneLongueur").toFloat();
        float laLargeur=jeuDesBateaux.getValeur("uneLargeur").toFloat();
        float laVitesse=jeuDesBateaux.getValeur("uneVitesse").toFloat();
        QString monImage=jeuDesBateaux.getValeur("uneImage").toString();
        CollectionEquipement uneCollectionEquip=Passerelle::chargerLesEquipements(idBateau.toInt());

        BateauVoyageur nouveauBateau(idBateau, nomBateau, laLongueur, laLargeur, laVitesse, monImage, uneCollectionEquip); //A FINIR
        resultat.ajouter(nouveauBateau);
    }
    return resultat;
}
