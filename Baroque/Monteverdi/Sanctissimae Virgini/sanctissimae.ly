%%  sanctissimae.ly
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

\version "2.16.0"

\header{
  title = \markup \center-column { "SANCTISSIMAE" \fontsize #-2 "VIRGINI" \fontsize #-3 "MISSA SENIS VOCIBUS" \fontsize #-4 "AC VESPERAE PLURIBUS" \fontsize #-5 "DECANTANDAE," \fontsize #-6 "CUM NONNULLIS SACRIS CONTENTIBUS" \fontsize #-7 "ad Sacella fiue Principum Cubicula accomodata."}
  composer = "Claudio Monteverdi"
  date = "1567-1643"
  publisher = \markup { "Copyright : " \char ##x00A9 " 2013 Benjamin Coudrin" }
  tagline = ""
}

\paper{
  tocTitleMarkup = \markup \huge \column {
    \hspace #2
    \fill-line { \null "INDEX" \null }
    \hspace #1
  }
  tocItemMarkup = \markup \large \fill-line {
    \fromproperty #'toc:text \fromproperty #'toc:page
  }
}
\layout{}

% Title Page
\include "definitions.ly"

% Contents
\include "Missa/missa.ly"
\include "Vesperae/vesperae.ly"


% Conductor
\book {
  \bookOutputSuffix "Conductor"
  \header {
    instrument = "Conductor"
  }  
  \include "book_header.ly"
  
  \missa
  \vesperae
}

  
  
