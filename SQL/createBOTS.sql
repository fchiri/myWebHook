
--
-- Struttura della tabella `BOTS`
--

CREATE TABLE `BOTS` (
  `BotID` varchar(250) NOT NULL,
  `BotDescription` varchar(250) DEFAULT NULL,
  `BotType` varchar(11) NOT NULL DEFAULT 'TELEGRAM',
  `Polling` tinyint(1) DEFAULT NULL,
  `lastRequestId` int(11) NOT NULL DEFAULT '0',
  `implementedBy` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Indici per le tabelle `BOTS`
--
ALTER TABLE `BOTS`
  ADD PRIMARY KEY (`BotID`);
