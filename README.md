Hardware & Co - Benchmark compression 7zip
==========================================

Benchmark de compilation utilisé pour les tests CPU de [Hardware & Co](https://hardwareand.co/). Lance une compression en LZMA2 du dossier data/ (contenu personalisable non fourni). Nécessite le paquet (Ubuntu/Debian) `7zip`.

## Utilisation
`./bench.sh`

## Sortie
Lire les dernières lignes produites par la commande, de format :
	real    XmXXXXXXs
	user    XmXXXXXXs
	sys     XmXXXXXXs

## Note
- La sortie est en temps real/user/sys, avec :
	- real : temps de compilation.
	- user : somme sur tous les threads des temps passé dans le programme en mode utilisateur.
	- sys : somme sur tous les threads du temps passé en mode noyaux (pour les appels systèmes).

Copyright © 2024 Nicolas Derumigny.
This work is free. You can redistribute it and/or modify it under the
terms of the Do What The Fuck You Want To Public License, Version 2,
as published by Sam Hocevar. See the COPYING file for more details.
