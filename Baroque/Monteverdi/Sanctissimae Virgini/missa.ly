%%  missa.ly
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
  title = \markup \center-column { "Missa in Illo Tempore"}
  composer = \markup \right-column { "Claudio Monteverdi" \small "1567-1643" }
  publisher = \markup { "Copyright : " \char ##x00A9 " 2013 Benjamin Coudrin" }
  tagline = ""
}

\paper {
  line-width    = 188\mm
  left-margin   = 10\mm
  top-margin    = 10\mm
  bottom-margin = 20\mm
  ragged-last-bottom = ##t 
  ragged-bottom = ##f
  annotate-spacing = ##f
  page-breaking = #ly:page-turn-breaking
  #(define page-breaking ly:page-turn-breaking)
}

\layout {}

% Contents
\include "Missa/missa.ly"

% Conductor
\book {
  \bookOutputSuffix "Conductor"
  \header {
    instrument = "Conductor"
  }  
  
  \markup { "Le fughe del quale sone queste" }
  \fughe
  
  \markup { "Missa in Illo tempore" }
  \missa
}

  
  
