%%  cavalier.ly
%%  This file is part of the Earlilypond project
%%  
%%  Copyright (c) 2014 Benjamin Coudrin <benjamin.coudrin@gmail.com>
%%                All Rights Reserved
%%
%%  This program is free software. It comes without any warranty, to
%%  the extent permitted by applicable law. You can redistribute it
%%  and/or modify it under the terms of the Do What The Fuck You Want
%%  To Public License, Version 2, as published by Sam Hocevar. See
%%  http://sam.zoy.org/wtfpl/COPYING for more details.

\version "2.16.2"
\include "../../include/format.ily"
\include "../../include/notation.ily"

\header {
  composer = "John Blow"
  composerDate = "1689-1755"
  date = "1724"
  title = "Le Printems"
  subtitle = \markup \center-column {"Premiere Cantate" "à voix seule, avec simphonie"}
  %tagline = \markup \concat { \publisherDefault ", Benjamin Coudrin"}
  sources = \markup \left-column {
    \concat {"[1] " \italic "Cantates françoises à voix seule, mêlées de simphonies" ", par Mr Boismortier, Oeuvre cinquième, 1724"}
    \with-url #"http://catalogue.bnf.fr/ark:/12148/cb39781246k" "http://catalogue.bnf.fr/ark:/12148/cb39781246k"
    \concat {"[2] " \italic "Le Printemps, cantate françoise ou musique de chambre à voix seule avec simphonie et la basse-continue" ", Composée par Mr Boismortier, 1724" }
    \with-url #"http://catalogue.bnf.fr/ark:/12148/cb39781324j" "http://catalogue.bnf.fr/ark:/12148/cb39781324j"
  }
}

\paper {
  bookTitleMarkup = \pieceBigTitleMarkup
}

\layout {
  \layoutCommons
}

%% Premier Recitatif
\include "recitatif1.ly"
\score {
  \new StaffGroup  <<
    \new Voice = "voix" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \Avoice >>
    \new Lyrics \lyricsto voix { \Alyrics }
    \new Staff <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \figuremode { \Abassefig }
      \Abasse
    >>
  >>
}

%% Air louré
\include "airloure.ly"
\score {
  \new StaffGroup  <<
    \new Voice = "dessus" <<\override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \Bdessus >>
    \new Voice = "voix" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \Bvoice >>
    \new Lyrics \lyricsto voix { \Blyrics }
    \new Staff <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \figuremode { \Bbassefig }
      \Bbasse
    >>
  >>
}

%% Recitatif - Doucement - Recitatif
%\include "recitdoucementrecit.ly"
%\score {
  %\new StaffGroup  <<
    %\new Voice = "dessus" <<\override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \Cdessus >>
    %\new Voice = "voix" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \Cvoice >>
    %\new Lyrics \lyricsto voix { \Clyrics }
    %\new Staff <<
      %\override Staff.BarLine #'allow-span-bar = ##f
      %#(set-accidental-style 'forget)
      %\figuremode { \Cbassefig }
      %\Cbasse
    %>>
  %>>
%}

%% Air gracieusement
%\include "airgracieusement.ly"
%\score {
  %\new StaffGroup  <<
    %\new Voice = "dessus" <<\override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \Ddessus >>
    %\new Voice = "voix" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \Dvoice >>
    %\new Lyrics \lyricsto voix { \Dlyrics }
    %\new Staff <<
      %\override Staff.BarLine #'allow-span-bar = ##f
      %#(set-accidental-style 'forget)
      %\figuremode { \Dbassefig }
      %\Dbasse
    %>>
  %>>
%}

%% Dernier Recitatif
%\include "recitatiffin.ly"
%\score {
  %\new StaffGroup  <<
    %\new Voice = "voix" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \Evoice >>
    %\new Lyrics \lyricsto voix { \Elyrics }
    %\new Staff <<
      %\override Staff.BarLine #'allow-span-bar = ##f
      %#(set-accidental-style 'forget)
      %\figuremode { \Ebassefig }
      %\Ebasse
    %>>
  %>>
%}

%% Air tendre
%\include "airtendre.ly"
%\score {
  %\new StaffGroup  <<
    %\new Voice = "dessus" <<\override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \Fdessus >>
    %\new Voice = "voix" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \Fvoice >>
    %\new Lyrics \lyricsto voix { \Flyrics }
    %\new Staff <<
      %\override Staff.BarLine #'allow-span-bar = ##f
      %#(set-accidental-style 'forget)
      %\figuremode { \Fbassefig }
      %\Fbasse
    %>>
  %>>
%}