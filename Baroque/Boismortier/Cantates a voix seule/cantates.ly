%%  cantates.ly
%%  This file is part of the Earlilypond project
%%  
%%  Copyright (c) 2013 Benjamin Coudrin <benjamin.coudrin@gmail.com>
%%                All Rights Reserved
%%
%%  This program is free software. It comes without any warranty, to
%%  the extent permitted by applicable law. You can redistribute it
%%  and/or modify it under the terms of the Do What The Fuck You Want
%%  To Public License, Version 2, as published by Sam Hocevar. See
%%  http://sam.zoy.org/wtfpl/COPYING for more details.

\version "2.16.2"
\include "../../../include/format.ily"
\include "../../../3rdParty/Viole/ornements-viole.ly"


\header {
  composer = "Joseph Bodin de Boismortier"
  composerDate = "1689-1755"
  date = "1724"
  title = "Cantates Françoises"
  subtitle = "a Voix seule, Mêlées de simphonies"
  opus = "OEuvre Cinquième"
  editor = "Benjamin Coudrin"
  sources = \markup \left-column {
    \concat {"[1] " \italic "Cantates françoises à voix seule, mêlées de simphonies" ", par Mr Boismortier, Oeuvre cinquième, 1724"}
    \with-url #"http://catalogue.bnf.fr/ark:/12148/cb39781246k" "http://catalogue.bnf.fr/ark:/12148/cb39781246k"
    \concat {"[2] " \italic "Le Printemps, cantate françoise ou musique de chambre à voix seule avec simphonie et la basse-continue" ", Composée par Mr Boismortier, 1724" }
    \with-url #"http://catalogue.bnf.fr/ark:/12148/cb39781324j" "http://catalogue.bnf.fr/ark:/12148/cb39781324j"
    \concat {"[3] " \italic "L'Eté, cantate françoise ou musique de chambre à voix seule avec simphonie et la basse-continue" ", Composée par Mr Boismortier, 1724" }
    \with-url #"http://catalogue.bnf.fr/ark:/12148/cb39781321h" "http://catalogue.bnf.fr/ark:/12148/cb39781321h"
    \concat {"[4] " \italic "L'Automne, cantate françoise ou musique de chambre à voix seule avec simphonie et la basse-continue" ", Composée par Mr Boismortier, 1724" }
    \with-url #"http://catalogue.bnf.fr/ark:/12148/cb39781319z" "http://catalogue.bnf.fr/ark:/12148/cb39781319z"
    \concat {"[5] " \italic "L'Hyver, cantate françoise ou musique de chambre à voix seule avec simphonie et la basse-continue" ", Composée par Mr Boismortier, 1724" }
    \with-url #"http://catalogue.bnf.fr/ark:/12148/cb39781322v" "http://catalogue.bnf.fr/ark:/12148/cb39781322v"
  }
  notes = ""
}

% Front page
\bookpart {
  \paper {
    bookTitleMarkup = \pieceFrontPageMarkup
  }
  \markup\null
}

% Music
%\include "music/scores.ly"
%\bookpart {
  %\paper {
    %bookTitleMarkup = \pieceTitleMarkup
    %indent = 30\mm
  %}
  % Verse 1
  %\score { \AAmusic \layout{\layoutCommons} }
%}
\score { c }