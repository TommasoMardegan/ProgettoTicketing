-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 09, 2024 alle 21:49
-- Versione del server: 10.4.28-MariaDB
-- Versione PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `limonta`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `aperturaticket`
--

CREATE TABLE `aperturaticket` (
  `ID` int(11) NOT NULL,
  `IDcliente` int(11) NOT NULL,
  `stato` enum('aperto','chiuso','sospeso','annullato') NOT NULL,
  `area` enum('Area PC e reti','AS400','Java','Contabilità','Formatori','Derma','Terzisti','Commerciali') NOT NULL,
  `breveDescrizione` varchar(64) NOT NULL,
  `descrizione` text NOT NULL,
  `dataApertura` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `aperturaticket`
--

INSERT INTO `aperturaticket` (`ID`, `IDcliente`, `stato`, `area`, `breveDescrizione`, `descrizione`, `dataApertura`) VALUES
(1, 2, 'chiuso', 'Area PC e reti', 'Problema di connettività', 'Il cliente riscontra problemi di connettività intermittente alla rete locale.', '2024-05-09 08:00:00'),
(2, 3, 'chiuso', 'Java', 'Errore durante l\'esecuzione dell\'applicazione', 'L\'applicazione Java restituisce un errore durante l\'esecuzione, impedendo all\'utente di completare determinate operazioni.', '2024-05-09 09:15:00'),
(3, 4, 'sospeso', 'Contabilità', 'Richiesta di assistenza con il software di contabilità', 'Il cliente richiede assistenza nell\'uso del software di contabilità per la gestione delle fatture e delle spese.', '2024-05-09 10:30:00'),
(4, 5, 'annullato', 'Commerciali', 'Problema con la generazione dei report di vendita', 'Il cliente riscontra difficoltà nella generazione dei report di vendita, che sono necessari per le operazioni aziendali quotidiane.', '2024-05-09 11:45:00'),
(5, 6, 'aperto', 'Area PC e reti', 'Mancata connessione alla stampante di rete', 'Il cliente non riesce a stampare su una stampante di rete condivisa dall\'ufficio.', '2024-05-09 13:00:00'),
(6, 7, 'chiuso', 'AS400', 'Problema con il sistema di gestione dei dati AS400', 'Il sistema AS400 sta riscontrando rallentamenti durante le operazioni di accesso ai dati, causando ritardi nelle operazioni aziendali.', '2024-05-09 14:15:00'),
(7, 8, 'sospeso', 'Java', 'Errore di autenticazione nell\'applicazione Java', 'L\'utente non riesce ad accedere all\'applicazione Java a causa di un errore di autenticazione.', '2024-05-09 15:30:00'),
(8, 9, 'annullato', 'Terzisti', 'Richiesta di informazioni sulle modalità di pagamento', 'Il cliente terzista richiede informazioni sulle modalità di pagamento accettate per i servizi forniti.', '2024-05-09 16:45:00'),
(9, 10, 'aperto', 'Derma', 'Problema con il software di gestione degli appuntamenti', 'Il software di gestione degli appuntamenti del reparto dermatologico sta generando errori durante la prenotazione degli appuntamenti.', '2024-05-09 18:00:00'),
(10, 11, 'chiuso', 'Commerciali', 'Assistenza con l\'utilizzo del CRM aziendale', 'Il reparto commerciale richiede assistenza nell\'utilizzo del CRM aziendale per la gestione dei contatti e delle opportunità di vendita.', '2024-05-09 19:15:00'),
(11, 12, 'sospeso', 'Contabilità', 'Errore nell\'elaborazione delle fatture fornitori', 'Il sistema di contabilità ha generato errori nell\'elaborazione delle fatture dei fornitori, causando ritardi nei pagamenti.', '2024-05-09 20:30:00'),
(12, 13, 'annullato', 'Formatori', 'Richiesta di assistenza tecnica con la piattaforma di formazione', 'Il team dei formatori necessita di assistenza tecnica per risolvere problemi di accesso e di navigazione sulla piattaforma di formazione online.', '2024-05-09 21:45:00'),
(13, 14, 'aperto', 'AS400', 'Rilevamento di un bug nel sistema AS400', 'Il team IT ha rilevato un bug critico nel sistema AS400 che sta causando errori nei calcoli delle scorte di magazzino.', '2024-05-09 23:00:00'),
(14, 15, 'chiuso', 'Java', 'Personalizzazione dell\'interfaccia utente nell\'applicazione Java', 'L\'utente richiede la personalizzazione dell\'interfaccia utente nell\'applicazione Java per adattarla alle proprie esigenze lavorative.', '2024-05-10 00:15:00'),
(15, 16, 'sospeso', 'Terzisti', 'Richiesta di chiarimenti sui requisiti del progetto in corso', 'Il cliente terzista richiede chiarimenti sui requisiti del progetto in corso per garantire una corretta esecuzione dei compiti assegnati.', '2024-05-10 01:30:00'),
(16, 17, 'annullato', 'Derma', 'Richiesta di cambiamento delle modalità di pagamento', 'Il reparto dermatologico richiede un cambiamento delle modalità di pagamento accettate per i trattamenti offerti ai pazienti.', '2024-05-10 02:45:00'),
(17, 18, 'aperto', 'Commerciali', 'Problema con l\'accesso ai dati nel sistema CRM', 'Il team commerciale riscontra difficoltà nell\'accesso ai dati nel sistema CRM, impedendo loro di recuperare informazioni importanti sui clienti.', '2024-05-10 04:00:00'),
(18, 19, 'chiuso', 'Contabilità', 'Assistenza con l\'importazione dei dati contabili', 'Il team di contabilità richiede assistenza con l\'importazione dei dati contabili da un sistema legacy a un nuovo sistema contabile.', '2024-05-10 05:15:00'),
(19, 20, 'sospeso', 'Formatori', 'Richiesta di aggiornamento del materiale didattico', 'Il team dei formatori richiede un aggiornamento del materiale didattico utilizzato nei corsi di formazione.', '2024-05-10 06:30:00'),
(20, 21, 'annullato', 'Commerciali', 'Problema con l\'invio delle email promozionali', 'Il reparto commerciale riscontra problemi nell\'invio delle email promozionali ai clienti a causa di blocchi del server di posta.', '2024-05-10 07:45:00'),
(21, 22, 'aperto', 'Java', 'Errore durante l\'installazione dell\'aggiornamento dell\'applicazi', 'L\'utente ha riscontrato un errore durante l\'installazione dell\'aggiornamento dell\'applicazione Java, impedendo il corretto funzionamento dell\'applicazione.', '2024-05-10 09:00:00'),
(22, 23, 'chiuso', 'Derma', 'Richiesta di assistenza con la strumentazione medica', 'Il reparto dermatologico richiede assistenza tecnica con la strumentazione medica utilizzata nei trattamenti dei pazienti.', '2024-05-10 10:15:00'),
(23, 24, 'sospeso', 'Commerciali', 'Assistenza con la configurazione dei profili clienti nel CRM', 'Il team commerciale richiede assistenza con la configurazione dei profili clienti nel CRM aziendale per migliorare la gestione delle relazioni con i clienti.', '2024-05-10 11:30:00'),
(24, 25, 'annullato', 'AS400', 'Richiesta di assistenza per il ripristino dei dati', 'Il sistema AS400 richiede assistenza per il ripristino di dati importanti dopo un\'interruzione del servizio.', '2024-05-10 12:45:00'),
(25, 26, 'aperto', 'Formatori', 'Problema con l\'accesso alla piattaforma di e-learning', 'Il team dei formatori riscontra problemi nell\'accesso alla piattaforma di e-learning utilizzata per la formazione dei dipendenti.', '2024-05-10 14:00:00'),
(26, 27, 'chiuso', 'Terzisti', 'Richiesta di assistenza con l\'installazione del software', 'Il cliente terzista richiede assistenza con l\'installazione di un nuovo software per la gestione delle commesse.', '2024-05-10 15:15:00'),
(27, 28, 'sospeso', 'Contabilità', 'Errore nell\'invio dei pagamenti ai fornitori', 'Il sistema di contabilità ha generato errori nell\'invio dei pagamenti ai fornitori, causando ritardi nei pagamenti e possibili conseguenze legali.', '2024-05-10 16:30:00'),
(28, 29, 'annullato', 'Java', 'Richiesta di assistenza con la risoluzione di bug', 'Il reparto IT richiede assistenza per risolvere bug critici nell\'applicazione Java che stanno causando malfunzionamenti.', '2024-05-10 17:45:00'),
(29, 30, 'aperto', 'Commerciali', 'Problema con l\'importazione dei dati dei clienti nel CRM', 'Il team commerciale riscontra problemi nell\'importazione dei dati dei clienti nel CRM aziendale, compromettendo l\'integrità dei dati aziendali.', '2024-05-10 19:00:00'),
(30, 31, 'chiuso', 'Derma', 'Richiesta di assistenza con la calibrazione degli strumenti', 'Il reparto dermatologico richiede assistenza tecnica con la calibrazione degli strumenti medici utilizzati nei trattamenti.', '2024-05-10 20:15:00'),
(31, 2, 'chiuso', 'Area PC e reti', 'Problema con il computer desktop', 'Il cliente ha riscontrato problemi di avvio con il suo computer desktop.', '2024-05-11 08:00:00'),
(32, 2, 'chiuso', 'Java', 'Errore durante l\'esecuzione dell\'applicazione aziendale', 'L\'applicazione Java utilizzata dal cliente per gestire le attività aziendali non si avvia correttamente.', '2024-05-11 09:15:00'),
(33, 2, 'aperto', 'Contabilità', 'Assistenza con l\'uso del software di contabilità', 'Il cliente necessita di supporto nell\'utilizzo di specifiche funzionalità del software di contabilità aziendale.', '2024-05-11 10:30:00'),
(34, 2, 'aperto', 'Formatori', 'Richiesta di accesso alla piattaforma di formazione online', 'Il cliente richiede l\'accesso alla piattaforma di formazione online per completare corsi obbligatori.', '2024-05-11 11:45:00'),
(35, 2, 'chiuso', 'Terzisti', 'Richiesta di chiarimenti sulle modalità di pagamento', 'Il cliente desidera maggiori informazioni sulle modalità di pagamento accettate per i servizi offerti.', '2024-05-11 13:00:00'),
(36, 2, 'chiuso', 'Derma', 'Problema con la prenotazione di un trattamento', 'Il cliente non riesce a prenotare un trattamento attraverso il sistema online del reparto dermatologico.', '2024-05-11 14:15:00'),
(37, 2, 'aperto', 'Commerciali', 'Assistenza con l\'invio di documenti importanti', 'Il cliente riscontra difficoltà nell\'invio di documenti cruciali ai partner commerciali.', '2024-05-11 15:30:00'),
(38, 2, 'aperto', 'AS400', 'Richiesta di supporto tecnico con il sistema AS400', 'Il cliente necessita di assistenza nell\'utilizzo del sistema AS400 per eseguire operazioni aziendali quotidiane.', '2024-05-11 16:45:00'),
(39, 2, 'aperto', 'Java', 'Errore durante la compilazione del report di vendite', 'Il cliente riscontra errori durante la compilazione del report di vendite mensile utilizzando l\'applicazione Java dedicata.', '2024-05-11 18:00:00'),
(40, 2, 'aperto', 'Commerciali', 'Problema con l\'accesso ai dati dei clienti', 'Il cliente ha difficoltà nell\'accedere ai dati dei clienti nel sistema CRM aziendale.', '2024-05-11 19:15:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `chiusuraticket`
--

CREATE TABLE `chiusuraticket` (
  `ID` int(11) NOT NULL,
  `IDticket` int(11) NOT NULL,
  `IDdipendente` int(11) NOT NULL,
  `dataFine` datetime NOT NULL,
  `risoluzioneProblema` varchar(128) NOT NULL,
  `altro` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dump dei dati per la tabella `chiusuraticket`
--

INSERT INTO `chiusuraticket` (`ID`, `IDticket`, `IDdipendente`, `dataFine`, `risoluzioneProblema`, `altro`) VALUES
(1, 1, 1, '2024-05-10 10:30:00', 'Problema risolto correttamente.', NULL),
(2, 2, 1, '2024-05-10 11:15:00', 'Configurazione terminata.', NULL),
(3, 3, 1, '2024-05-10 12:00:00', 'Aggiornamento software completato.', NULL),
(4, 4, 1, '2024-05-10 13:20:00', 'Hardware sostituito con successo.', NULL),
(5, 5, 1, '2024-05-10 14:10:00', 'Problema di rete risolto.', NULL),
(6, 6, 1, '2024-05-10 15:00:00', 'Errore di sistema corretto.', NULL),
(7, 7, 1, '2024-05-10 16:30:00', 'Installazione completata con successo.', NULL),
(8, 8, 1, '2024-05-10 17:45:00', 'Problema di accesso risolto.', NULL),
(9, 9, 1, '2024-05-11 09:20:00', 'Aggiornamento effettuato.', NULL),
(10, 10, 1, '2024-05-11 10:00:00', 'Backup eseguito correttamente.', NULL),
(11, 11, 1, '2024-05-11 11:30:00', 'Problema di stampa risolto.', NULL),
(12, 12, 1, '2024-05-11 12:45:00', 'Errore di connessione risolto.', NULL),
(13, 13, 1, '2024-05-11 13:10:00', 'Configurazione di rete completata.', NULL),
(14, 14, 1, '2024-05-11 14:20:00', 'Aggiornamento del driver effettuato.', NULL),
(15, 15, 1, '2024-05-11 15:40:00', 'Problema di sicurezza risolto.', NULL),
(16, 16, 1, '2024-05-11 16:15:00', 'Modifica delle impostazioni completata.', NULL),
(17, 17, 1, '2024-05-12 09:30:00', 'Backup dei dati eseguito.', NULL),
(18, 18, 1, '2024-05-12 10:10:00', 'Problema di login risolto.', NULL),
(19, 19, 1, '2024-05-12 11:20:00', 'Software reinstallato.', NULL),
(20, 20, 1, '2024-05-12 12:00:00', 'Aggiornamento del sistema operativo completato.', NULL),
(21, 21, 1, '2024-05-12 13:40:00', 'Problema di connettività risolto.', NULL),
(22, 22, 1, '2024-05-12 14:50:00', 'Installazione del software avvenuta con successo.', NULL),
(23, 23, 1, '2024-05-12 15:25:00', 'Configurazione dei permessi completata.', NULL),
(24, 24, 1, '2024-05-12 16:30:00', 'Problema di email risolto.', NULL),
(25, 25, 1, '2024-05-13 09:15:00', 'Aggiornamento della sicurezza completato.', NULL),
(26, 26, 1, '2024-05-13 10:20:00', 'Problema di connessione VPN risolto.', NULL),
(27, 27, 1, '2024-05-13 11:35:00', 'Errore del database corretto.', NULL),
(28, 28, 1, '2024-05-13 12:40:00', 'Configurazione dei dispositivi terminata.', NULL),
(29, 29, 1, '2024-05-13 13:20:00', 'Installazione dell antivirus completata.', NULL),
(30, 30, 1, '2024-05-13 14:50:00', 'Problema di connessione Internet risolto.', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `cliente`
--

CREATE TABLE `cliente` (
  `ID` int(11) NOT NULL,
  `nome` varchar(32) NOT NULL,
  `cognome` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `numTelefono` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `cliente`
--

INSERT INTO `cliente` (`ID`, `nome`, `cognome`, `username`, `password`, `email`, `numTelefono`) VALUES
(2, 'NomeCliente1', 'CognomeCliente1', 'usernamecliente1', 'passwordcliente1', 'cliente1@example.com', '0123456789'),
(3, 'NomeCliente2', 'CognomeCliente2', 'usernamecliente2', 'passwordcliente2', 'cliente2@example.com', '0123456789'),
(4, 'NomeCliente3', 'CognomeCliente3', 'usernamecliente3', 'passwordcliente3', 'cliente3@example.com', '0123456789'),
(5, 'NomeCliente4', 'CognomeCliente4', 'usernamecliente4', 'passwordcliente4', 'cliente4@example.com', '0123456789'),
(6, 'NomeCliente5', 'CognomeCliente5', 'usernamecliente5', 'passwordcliente5', 'cliente5@example.com', '0123456789'),
(7, 'NomeCliente6', 'CognomeCliente6', 'usernamecliente6', 'passwordcliente6', 'cliente6@example.com', '0123456789'),
(8, 'NomeCliente7', 'CognomeCliente7', 'usernamecliente7', 'passwordcliente7', 'cliente7@example.com', '0123456789'),
(9, 'NomeCliente8', 'CognomeCliente8', 'usernamecliente8', 'passwordcliente8', 'cliente8@example.com', '0123456789'),
(10, 'NomeCliente9', 'CognomeCliente9', 'usernamecliente9', 'passwordcliente9', 'cliente9@example.com', '0123456789'),
(11, 'NomeCliente10', 'CognomeCliente10', 'usernamecliente10', 'passwordcliente10', 'cliente10@example.com', '0123456789'),
(12, 'NomeCliente11', 'CognomeCliente11', 'usernamecliente11', 'passwordcliente11', 'cliente11@example.com', '0123456789'),
(13, 'NomeCliente12', 'CognomeCliente12', 'usernamecliente12', 'passwordcliente12', 'cliente12@example.com', '0123456789'),
(14, 'NomeCliente13', 'CognomeCliente13', 'usernamecliente13', 'passwordcliente13', 'cliente13@example.com', '0123456789'),
(15, 'NomeCliente14', 'CognomeCliente14', 'usernamecliente14', 'passwordcliente14', 'cliente14@example.com', '0123456789'),
(16, 'NomeCliente15', 'CognomeCliente15', 'usernamecliente15', 'passwordcliente15', 'cliente15@example.com', '0123456789'),
(17, 'NomeCliente16', 'CognomeCliente16', 'usernamecliente16', 'passwordcliente16', 'cliente16@example.com', '0123456789'),
(18, 'NomeCliente17', 'CognomeCliente17', 'usernamecliente17', 'passwordcliente17', 'cliente17@example.com', '0123456789'),
(19, 'NomeCliente18', 'CognomeCliente18', 'usernamecliente18', 'passwordcliente18', 'cliente18@example.com', '0123456789'),
(20, 'NomeCliente19', 'CognomeCliente19', 'usernamecliente19', 'passwordcliente19', 'cliente19@example.com', '0123456789'),
(21, 'NomeCliente20', 'CognomeCliente20', 'usernamecliente20', 'passwordcliente20', 'cliente20@example.com', '0123456789'),
(22, 'NomeCliente21', 'CognomeCliente21', 'usernamecliente21', 'passwordcliente21', 'cliente21@example.com', '0123456789'),
(23, 'NomeCliente22', 'CognomeCliente22', 'usernamecliente22', 'passwordcliente22', 'cliente22@example.com', '0123456789'),
(24, 'NomeCliente23', 'CognomeCliente23', 'usernamecliente23', 'passwordcliente23', 'cliente23@example.com', '0123456789'),
(25, 'NomeCliente24', 'CognomeCliente24', 'usernamecliente24', 'passwordcliente24', 'cliente24@example.com', '0123456789'),
(26, 'NomeCliente25', 'CognomeCliente25', 'usernamecliente25', 'passwordcliente25', 'cliente25@example.com', '0123456789'),
(27, 'NomeCliente26', 'CognomeCliente26', 'usernamecliente26', 'passwordcliente26', 'cliente26@example.com', '0123456789'),
(28, 'NomeCliente27', 'CognomeCliente27', 'usernamecliente27', 'passwordcliente27', 'cliente27@example.com', '0123456789'),
(29, 'NomeCliente28', 'CognomeCliente28', 'usernamecliente28', 'passwordcliente28', 'cliente28@example.com', '0123456789'),
(30, 'NomeCliente29', 'CognomeCliente29', 'usernamecliente29', 'passwordcliente29', 'cliente29@example.com', '0123456789'),
(31, 'NomeCliente30', 'CognomeCliente30', 'usernamecliente30', 'passwordcliente30', 'cliente30@example.com', '0123456789');

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendente`
--

CREATE TABLE `dipendente` (
  `ID` int(11) NOT NULL,
  `nome` varchar(16) NOT NULL,
  `cognome` varchar(32) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `numTelefono` char(10) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `dipendente`
--

INSERT INTO `dipendente` (`ID`, `nome`, `cognome`, `username`, `password`, `email`, `numTelefono`, `isAdmin`) VALUES
(1, 'Giovanni', 'Rossi', 'giovanni', 'password1', 'giovanni@example.com', '1234567890', 1),
(2, 'Marco', 'Bianchi', 'marco', 'password2', 'marco@example.com', '2345678901', 0),
(3, 'Luca', 'Verdi', 'luca', 'password3', 'luca@example.com', '3456789012', 0),
(4, 'Anna', 'Neri', 'anna', 'password4', 'anna@example.com', '4567890123', 0),
(5, 'Maria', 'Russo', 'maria', 'password5', 'maria@example.com', '5678901234', 0),
(6, 'Giuseppe', 'Gallo', 'giuseppe', 'password6', 'giuseppe@example.com', '6789012345', 0),
(7, 'Paolo', 'Greco', 'paolo', 'password7', 'paolo@example.com', '7890123456', 0),
(8, 'Laura', 'Conti', 'laura', 'password8', 'laura@example.com', '8901234567', 0),
(9, 'Sara', 'Ferrari', 'sara', 'password9', 'sara@example.com', '9012345678', 0),
(10, 'Roberto', 'Esposito', 'roberto', 'password10', 'roberto@example.com', '0123456789', 0),
(11, 'Alessandro', 'Martini', 'alessandro', 'password11', 'alessandro@example.com', '0987654321', 0),
(12, 'Giulia', 'Fabbri', 'giulia', 'password12', 'giulia@example.com', '9876543210', 0),
(13, 'Francesca', 'Barbieri', 'francesca', 'password13', 'francesca@example.com', '8765432109', 0),
(14, 'Lorenzo', 'Sanna', 'lorenzo', 'password14', 'lorenzo@example.com', '7654321098', 0),
(15, 'Cristina', 'Monti', 'cristina', 'password15', 'cristina@example.com', '6543210987', 0),
(16, 'Antonio', 'Moretti', 'antonio', 'password16', 'antonio@example.com', '5432109876', 0),
(17, 'Daniela', 'Costa', 'daniela', 'password17', 'daniela@example.com', '4321098765', 0),
(18, 'Andrea', 'Mancini', 'andrea', 'password18', 'andrea@example.com', '3210987654', 0),
(19, 'Simone', 'Rossetti', 'simone', 'password19', 'simone@example.com', '2109876543', 0),
(20, 'Chiara', 'Galli', 'chiara', 'password20', 'chiara@example.com', '1098765432', 0),
(21, 'Marco', 'Ricci', 'marco2', 'password21', 'marco2@example.com', '1098765432', 0),
(22, 'Alessia', 'Serra', 'alessia', 'password22', 'alessia@example.com', '9876543210', 0),
(23, 'Davide', 'Leone', 'davide', 'password23', 'davide@example.com', '8765432109', 0),
(24, 'Elena', 'Gallo', 'elena', 'password24', 'elena@example.com', '7654321098', 0),
(25, 'Federico', 'Gatti', 'federico', 'password25', 'federico@example.com', '6543210987', 0),
(26, 'Greta', 'Ferrara', 'greta', 'password26', 'greta@example.com', '5432109876', 0),
(27, 'Luigi', 'Villa', 'luigi', 'password27', 'luigi@example.com', '4321098765', 0),
(28, 'Marta', 'Brambilla', 'marta', 'password28', 'marta@example.com', '3210987654', 0),
(29, 'Nicola', 'Pagano', 'nicola', 'password29', 'nicola@example.com', '2109876543', 0),
(30, 'Noemi', 'Rossi', 'noemi', 'password30', 'noemi@example.com', '1098765432', 0),
(31, 'Pietro', 'Mazza', 'pietro', 'password31', 'pietro@example.com', '0987654321', 0),
(32, 'Rosa', 'Ferrari', 'rosa', 'password32', 'rosa@example.com', '9876543210', 0),
(33, 'Stefano', 'Martini', 'stefano', 'password33', 'stefano@example.com', '8765432109', 0),
(34, 'Valentina', 'Conti', 'valentina', 'password34', 'valentina@example.com', '7654321098', 0),
(35, 'Vincenzo', 'Rizzo', 'vincenzo', 'password35', 'vincenzo@example.com', '6543210987', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendente_ticket`
--

CREATE TABLE `dipendente_ticket` (
  `idDipendente` int(11) NOT NULL,
  `idTicket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `aperturaticket`
--
ALTER TABLE `aperturaticket`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idCliene` (`IDcliente`);

--
-- Indici per le tabelle `chiusuraticket`
--
ALTER TABLE `chiusuraticket`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDticket` (`IDticket`,`IDdipendente`),
  ADD KEY `IDdipendente` (`IDdipendente`);

--
-- Indici per le tabelle `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`,`numTelefono`);

--
-- Indici per le tabelle `dipendente`
--
ALTER TABLE `dipendente`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `username` (`username`,`email`,`numTelefono`);

--
-- Indici per le tabelle `dipendente_ticket`
--
ALTER TABLE `dipendente_ticket`
  ADD PRIMARY KEY (`idDipendente`,`idTicket`),
  ADD UNIQUE KEY `idDipendente_2` (`idDipendente`,`idTicket`),
  ADD KEY `idDipendente` (`idDipendente`,`idTicket`),
  ADD KEY `idTicket` (`idTicket`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `aperturaticket`
--
ALTER TABLE `aperturaticket`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT per la tabella `chiusuraticket`
--
ALTER TABLE `chiusuraticket`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT per la tabella `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT per la tabella `dipendente`
--
ALTER TABLE `dipendente`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `aperturaticket`
--
ALTER TABLE `aperturaticket`
  ADD CONSTRAINT `aperturaticket_ibfk_1` FOREIGN KEY (`IDcliente`) REFERENCES `cliente` (`ID`);

--
-- Limiti per la tabella `chiusuraticket`
--
ALTER TABLE `chiusuraticket`
  ADD CONSTRAINT `chiusuraticket_ibfk_1` FOREIGN KEY (`IDticket`) REFERENCES `aperturaticket` (`ID`),
  ADD CONSTRAINT `chiusuraticket_ibfk_2` FOREIGN KEY (`IDdipendente`) REFERENCES `dipendente` (`ID`);

--
-- Limiti per la tabella `dipendente_ticket`
--
ALTER TABLE `dipendente_ticket`
  ADD CONSTRAINT `dipendente_ticket_ibfk_1` FOREIGN KEY (`idDipendente`) REFERENCES `dipendente` (`ID`),
  ADD CONSTRAINT `dipendente_ticket_ibfk_2` FOREIGN KEY (`idTicket`) REFERENCES `aperturaticket` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
