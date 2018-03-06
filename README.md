# myWebHook
Un "WebHook" personale per sviluppare facilmente bot telegram senza conoscere le API di telegram

Questo è un framework che consente di sviluppare agevolmente bot telegram in php, al momento, senza conoscere i dettagli delle API di Telegram. Vi basterà soltanto gestire una "richiesta", che vi arriva sul vostro bot da un utente, e costruire la risposta sotto forma di N righe di testo. La logica che impelemta la risposta, che poi dovrebbe essere in linea di massima un "servizio", è l'unica cosa sulla quale vi dovete concentrare. Scrivere una classe in PHP che, ad una richiesta specifica, fornisca una risposta: quello che in gergo viene detta la "Business Logic". Del resto si occupa myWebHook.

Architettura
Il framework si compone di due classi: una è il "processo perenne" che verifica se sui vostri bot è arrivata una richiesta (requestPollingAnswerBot.php) e l'altra classe è quella che, in base al Bot_Id al quale la richiesta è arrivata istanzia la classe che implementa la risposta e la rimanda al processo perenne per l'invio all'utente (requestPollingAnswerBot.php).



Database di supporto

Il tutto è supportato da una semplice tabella "BOTS" in un db che riporta:

______________________________________________________________________________
| BotID | BotDescription | BotType | Polling | lastRequestId | implementedBy |
______________________________________________________________________________


- BotID           Identificativo univoco del bot (chiave primaria)
- BotDescription  Descrizione
- BotType         Indica se il bot.....
- Pollig          Indica se il bot va monitorato con il meccanismo di polling o meno. Può valere "true" oppure "false"
- lastRequestId   Riporta l'Id dell'ultima "Request" elaborata
- implementedBy   Indica la classe che implementa il servizio correlato


Caratteristiche

- implementati meccanismi anti SQL Injection 
- supporta la generazione di una "tastiera" personalizzata per i bot
- 
