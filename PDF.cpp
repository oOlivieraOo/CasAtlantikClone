#include "PDF.h"
#include "bateau.h"

PDF::PDF(QString nomDocument)
{
    codeHtml = nomDocument;
    codeHtml="<html><head>Projet Cas Atlantik</head><body><h1>Cas Atlantik</h1><p>Il y a du texte</p>";
    monPdfWriter=new QPdfWriter(nomDocument);
}
void PDF::ecrireTexte(QString leTexte)
{
    codeHtml.append(leTexte);
}

void PDF::chargerImage(QString chemin)
{
    chemin="<img src= '/home/oanassalon/CasAtlantik/ImageBateaux/bateau1'>";
}

void PDF::imprimerEtFermer()
{
    //ajouter balises de fin
    codeHtml="</body></html>";
    monTextDocument.setHtml(codeHtml);
    monTextDocument.print(monPdfWriter);

}
