# Progetto per il corso di Architettura dei Sistemi Software della Laurea Magistrale in Ingegneria Informatica presso l'università Roma Tre (2017)

Progetti per il corso
di Architettura dei Sistemi Software
a Roma Tre,
edizione 2017 (A.A. 2016-2017),
tenuto dal prof. Luca Cabibbo.

Questo repository contiene il codice dei *progetti*
relativi a delle semplici *applicazioni software distribuite*
(basate sull'uso di *middleware*),
che vanno eseguite in degli opportuni *ambienti distribuiti*:
* il software è normalmente scritto in [Java](http://www.oracle.com/technetwork/java/index.html),
  e costruito con [Gradle](http://gradle.org/);
* ciascun ambiente di esecuzione distribuito è composto
  da una o più macchine virtuali create con
  [Vagrant](https://www.vagrantup.com/).

## Software da installare sul proprio PC

### Per lo sviluppo del software

* [Java SDK](http://www.oracle.com/technetwork/java/javase/)
* [Gradle](http://gradle.org/)
* [Git](https://git-scm.com/)

### Per la gestione degli ambienti di esecuzione  

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)
* [Git](https://git-scm.com/)

## Organizzazione del repository

Questo repository è organizzato in diverse sezioni (cartelle):
* [progetti](progetti/) contiene il codice delle *applicazioni distribuite*,
  con una sottosezione (sottocartella) per ciascuno degli argomenti del corso;
* [ambienti](ambienti/) contiene il codice per la gestione degli *ambienti distribuiti*,
  con una sottosezione (sottocartella) per ciascuno degli ambienti distribuiti
  su cui poter eseguire le applicazioni distribuite sviluppate.

## Accesso al repository

Per effettuare il download del repository, usare il seguente comando Git
dalla cartella locale in cui si vuole scaricare il repository:

    $ git clone https://github.com/e-petrachi/projects-ASW

Per aggiornare il contenuto della propria copia locale del repository,
usare il seguente comando Git dalla cartella locale in cui è stato scaricato il repository:

    $ git pull
