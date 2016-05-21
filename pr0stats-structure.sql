--
-- Tabellenstruktur für Tabelle `kpi_values`
--

CREATE TABLE `kpi_values` (
  `id` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `post_count` int(11) NOT NULL,
  `user_count` int(11) NOT NULL,
  `tag_count` int(11) NOT NULL,
  `comment_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `post`
--

CREATE TABLE `post` (
  `id` int(11) UNSIGNED NOT NULL,
  `notfound` tinyint(1) NOT NULL DEFAULT '0',
  `user` varchar(60) NOT NULL,
  `sf_level` tinyint(1) NOT NULL DEFAULT '1',
  `mark` tinyint(1) NOT NULL,
  `promoted` int(11) UNSIGNED NOT NULL,
  `result` int(11) NOT NULL,
  `up` int(11) NOT NULL,
  `down` int(11) NOT NULL,
  `created` int(11) UNSIGNED NOT NULL,
  `fullsize` varchar(300) DEFAULT NULL,
  `source` varchar(300) DEFAULT NULL,
  `image` varchar(300) NOT NULL,
  `thumb` varchar(300) NOT NULL,
  `comments` int(11) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `week` int(2) NOT NULL,
  `day` int(2) NOT NULL,
  `hour` int(2) NOT NULL,
  `minute` int(2) NOT NULL,
  `datetime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `post_has_tags`
--

CREATE TABLE `post_has_tags` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `tag` varchar(255) CHARACTER SET latin1 NOT NULL,
  `is_generic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `kpi_values`
--
ALTER TABLE `kpi_values`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created` (`created`),
  ADD KEY `year` (`year`),
  ADD KEY `month` (`month`),
  ADD KEY `day` (`day`),
  ADD KEY `hour` (`hour`),
  ADD KEY `minute` (`minute`),
  ADD KEY `datetime` (`datetime`),
  ADD KEY `week` (`week`),
  ADD KEY `user` (`user`),
  ADD KEY `sf_level` (`sf_level`),
  ADD KEY `notfound` (`notfound`),
  ADD KEY `result` (`result`);

--
-- Indizes für die Tabelle `post_has_tags`
--
ALTER TABLE `post_has_tags`
  ADD PRIMARY KEY (`post_id`,`tag_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indizes für die Tabelle `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag` (`tag`),
  ADD KEY `is_generic` (`is_generic`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `kpi_values`
--
ALTER TABLE `kpi_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;