%%  miserereS87.ly
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
\include "psalm51.ly"

% Front page
\bookpart {
  \header {
    composer = "Michel-Richard de Lalande"
    composerDate = "1657-1726"
    date = "1730"
    title = "Miserere"
    subtitle = "a voix seule"
    opus = ""
    editor = "Benjamin Coudrin"
    sources = \markup \left-column {
      \concat {"[1] " \italic "Les III leçons de Ténèbres et le Miserere à voix seule de Feu Mr De La Lande" ", Gravé par L. Hue, 1730"}
      \with-url #"http://catalogue.bnf.fr/ark:/12148/cb397877619" "http://catalogue.bnf.fr/ark:/12148/cb397877619"
      \concat {"[2] " \italic "Biblia Sacra juxta Vulgatam Clementinam" ", M. Tweedale (ed.), The Clementine Vulgate project." }
      \with-url #"http://vulsearch.sourceforge.net/html/" "http://vulsearch.sourceforge.net/html/"
      \concat {"[3] " \italic "La Bible, Ancien et Nouveau Testament" ", Traduction de Louis Segond, 1874-1880, révisée en 1910"}
    \with-url #"http://fr.wikisource.org/wiki/Bible_Segond_1910" "http://fr.wikisource.org/wiki/Bible_Segond_1910"
    }
    notes = \markup {
      \center-column {
        \bold {"Psaume 51(50):3-21"}
        \fill-line {
          \hspace #1
          \override #'(line-width . 39)
          \latinPsalm
          \postscript #"0 0 moveto 0 -85 rlineto stroke"
          \override #'(line-width . 39)
          \frenchPsalm
          \hspace #1
        }
      }
    }
  }
  
  \paper {
    bookTitleMarkup = \pieceFrontPageMarkup
  }
  \markup\null
}

% Music
