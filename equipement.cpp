#include "equipement.h"
#include <sstream>
Equipement::Equipement(QString unId, QString unLib)
{
	idEquip = unId;
	libEquip = unLib;
}
QString Equipement::versChaine()
{
    QString resultat;
	resultat="- "+libEquip;
	return resultat;
}
