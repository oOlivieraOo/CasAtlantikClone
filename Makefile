CC=g++
CFLAGS=-W -Wall -ansi -pedantic
LDFLAGS=
EXEC=monApplirun

all: $(EXEC)

monApplirun: bateau.o bateauFret.o bateauVoyageur.o collBatVoyageur.o collBatEquipement.o equipement.o
	$(CC) -o monApplirun bateau.o bateauFret.o bateauVoyageur.o collBatVoyageur.o collBatEquipement.o equipement.o $(LDFLAGS)

bateau.o: bateau.cpp
	$(CC) -o bateau.o -c bateau.cpp $(CFLAGS)

bateauFret.o: bateauFret.cpp
	$(CC) -o bateauFret.o -c bateauFret.cpp $(CFLAGS)

bateauVoyageur.o: bateauVoyageur.cpp
	$(CC) -o bateauVoyageur.o -c bateauVoyageur.cpp $(CFLAGS)

collBatVoyageur.o: collBatVoyageur.cpp
	$(CC) -o collBatVoyageur.o -c collBatVoyageur.cpp $(CFLAGS)

collBatEquipement.o: collBatEquipement.cpp
	$(CC) -o collBatEquipement.o -c collBatEquipement.cpp $(CFLAGS)

equipement.o: equipement.cpp
	$(CC) -o equipement.o -c equipement.cpp $(CFLAGS)

jeuEnregistrement.o: jeuEnregistrement.cpp
	$(CC) -o jeuEnregistrement.o -c jeuEnregistrement.cpp $(CFLAGS)

passerelle.o: passerelle.o -c passerelle.cpp
	$(CC) -o passerelle.o -c passerelle $(CFLAGS)

clean:
	rm -rf *.o

mrproper: clean
	rm -rf $(EXEC)