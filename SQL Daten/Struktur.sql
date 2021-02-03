-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Erstellungszeit: 20. Jan 2021 um 13:55
-- Server-Version: 5.5.68-MariaDB
-- PHP-Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `schule-q2-6`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `arbeitet_in`
--

CREATE TABLE `arbeitet_in` (
  `fachkraft_id` int(11) NOT NULL,
  `zentrum_bezeichnung` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `beliefern`
--

CREATE TABLE `beliefern` (
  `id` int(11) NOT NULL,
  `impfstoff_name` varchar(255) NOT NULL,
  `zentrum_bezeichnung` varchar(255) NOT NULL,
  `datum` varchar(255) NOT NULL,
  `preis` float NOT NULL,
  `menge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fachkraft`
--

CREATE TABLE `fachkraft` (
  `id` int(11) NOT NULL,
  `honorar` int(11) NOT NULL,
  `profession` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `firma`
--

CREATE TABLE `firma` (
  `name` varchar(255) NOT NULL,
  `strasse` varchar(255) NOT NULL,
  `nr` varchar(255) NOT NULL,
  `plz` varchar(255) NOT NULL,
  `ort` varchar(255) NOT NULL,
  `land` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `impfstoff`
--

CREATE TABLE `impfstoff` (
  `firma_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `erstzulassung` varchar(255) NOT NULL,
  `wirkungsgrad` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `impfzentrum`
--

CREATE TABLE `impfzentrum` (
  `bezeichnung` varchar(255) NOT NULL,
  `strasse` varchar(255) NOT NULL,
  `nr` varchar(255) NOT NULL,
  `ort` varchar(255) NOT NULL,
  `plz` varchar(255) NOT NULL,
  `kapazitaet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kunde`
--

CREATE TABLE `kunde` (
  `zentrum_bezeichnung` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `impfprioritaet` int(11) NOT NULL,
  `alter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `beliefern`
--
ALTER TABLE `beliefern`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `fachkraft`
--
ALTER TABLE `fachkraft`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `firma`
--
ALTER TABLE `firma`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `impfstoff`
--
ALTER TABLE `impfstoff`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `impfzentrum`
--
ALTER TABLE `impfzentrum`
  ADD PRIMARY KEY (`bezeichnung`);

--
-- Indizes für die Tabelle `kunde`
--
ALTER TABLE `kunde`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `beliefern`
--
ALTER TABLE `beliefern`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `fachkraft`
--
ALTER TABLE `fachkraft`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `kunde`
--
ALTER TABLE `kunde`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
