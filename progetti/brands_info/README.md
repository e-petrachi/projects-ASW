# brands_info

Questo progetto è composto da alcuni servizi stateless, che comunicano tra loro tramite invocazioni remote con REST.
Ciascuno dei servizi è realizzato come una applicazione Spring Boot separata.
Il servizio principale **Brands** (S), può ricevere richieste da un client HTTP/REST esterno, ed in particolare da un qualunque browser web, e può effettuare richieste ai suoi servizi secondari **BrandsFamous** (S1) e **BrandsSales** (S2).

* [**Brands**](Brands/) (S) è un servizio per l'interrogazione su dati commerciali di brand d'abbigliamento, che accede i servizi **BrandsFamous** e **BrandsSales**

* [**BrandsFamous**](BrandsFamous/) (S1) è un servizio che fornisce informazioni generiche (casuali) riferite ad un brand d'abbigliamento, utilizzato dal servizio **Brands**

* [**BrandsSales**](BrandsSales/) (S2) è un servizio che fornisce informazioni (casuali) su fatturato riferite ad un brand d'abbigliamento sia in riferimento ad un anno solare specifico che in alternativa al fatturato più alto, utilizzato dal servizio **Brands**

Le diverse applicazioni comunicano tra loro tramite invocazioni remote con REST.
Ciascuno dei servizi è realizzato come una applicazione Spring Boot separata.

### Build & Run

La costruzione delle applicazioni viene guidata a seguito della creazione del nodo **dev** da istruzioni apposite sul terminale. In particolare una volta scaricato il repository, aprire una finestra del terminale ed eseguire lo script sotto che avvierà la macchina virtuale **dev**:

      $ sh startUpDev.sh

Una volta avviata la macchina virtuale **dev** seguire le istruzioni che vengono visualizzate sul terminale stesso ed in particolare, aprire 3 finestre del terminale, posizionarsi nella directory **developer** ed eseguire rispettivamente questi comandi separatamente:

     $ vagrant ssh dev       $ sh shared/scripts/startup1.sh

     $ vagrant ssh dev       $ sh shared/scripts/startup2.sh

     $ vagrant ssh dev       $ sh shared/scripts/startup3.sh

### Esecuzione dell'applicazione

Su qualsiasi browser collegarsi al seguente url `http://localhost:8088/` per visualizzare la pagina 'index.html' per una visita guidata ai servizi offerti.

Per testare direttamente il servizio [**Brands**](Brands/) (S) digitare un url del tipo `http://localhost:8088/S/<brand>/<anno>` dove il valore `<anno>` è opzionale, mentre per i servizi secondari [**BrandsFamous**](BrandsFamous/) (S1) e [**BrandsSales**](BrandsSales/) (S2) digitare rispettivamente url del tipo `http://localhost:8081/S1/<brand>` e `http://localhost:8082/S2/<brand>/<anno>` dove il valore `<anno>` è opzionale .

### Stop

Al termine dell'esecuzione si può eseguire lo stop del nodo **dev** con il comando:

      $ sh stopDev.sh
