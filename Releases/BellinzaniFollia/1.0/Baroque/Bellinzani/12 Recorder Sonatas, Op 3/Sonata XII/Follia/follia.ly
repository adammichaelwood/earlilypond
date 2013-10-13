%%  follia.ly
%%  This file is part of the Earlilypond project
%%  
%%  Copyright (c) 2011-2013 Benjamin Coudrin <benjamin.coudrin@gmail.com>
%%                All Rights Reserved
%%
%%  This program is free software. It comes without any warranty, to
%%  the extent permitted by applicable law. You can redistribute it
%%  and/or modify it under the terms of the Do What The Fuck You Want
%%  To Public License, Version 2, as published by Sam Hocevar. See
%%  http://sam.zoy.org/wtfpl/COPYING for more details.

\version "2.12.3"

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 18)
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

\header {
  title = "Follia"
  subtitle = \markup \center-column { "dalla Sonata XII in re minore" \small \italic "per flauto e basso continuo" }
  composer =  \markup \right-column { "Paolo Benedetto Bellinzani" \small "(1690-1757)" }
  tagline = ""
  copyright = \markup { "Copyright : " \char ##x00A9 " 2011-2013 Earlilypond, Benjamin Coudrin." }
}

#(set-global-staff-size 17)

stdClef = {\clef bass}
altClef = {\clef tenor}
  
\score {
  \new ChoirStaff {
    <<
      \new Staff {
        \set Staff.instrumentName = "Flauto"
        \include "primo_flauto.ly"
        \include "secondo_flauto.ly"
        \include "terzo_flauto.ly"
        \include "quarto_flauto.ly"
        \include "quinto_flauto.ly"
        \include "sesto_flauto.ly"
        \include "settimo_flauto.ly"
        \include "ottavo_flauto.ly"
        \include "nono_flauto.ly"
        \include "decimo_flauto.ly"
        \include "undicesimo_flauto.ly"
        \include "dodicesimo_flauto.ly"
        \include "tredicesimo_flauto.ly"
        \include "quattordicesimo_flauto.ly"
        \include "quindicesimo_flauto.ly"
        \include "sedicesimo_flauto.ly"
        \include "diciassettesimo_flauto.ly"
        \include "diciottesimo_flauto.ly"
      }
      
      \new FiguredBass \figuremode {
        \set figuredBassAlterationDirection = #LEFT
        \set figuredBassPlusDirection = #LEFT
        \override VerticalAxisGroup #'minimum-Y-extent = #'()
        \override BassFigureAlignment #'stacking-dir = #UP
        \override FiguredBass.BassFigure #'font-size = #-2
        \include "primo_continuo.ly"
        \include "secondo_continuo.ly"
        \include "terzo_continuo.ly"
        \include "quarto_continuo.ly"
        \include "quinto_continuo.ly"
        \include "sesto_continuo.ly"
        \include "settimo_continuo.ly"
        \include "ottavo_continuo.ly"
        \include "nono_continuo.ly"
        \include "decimo_continuo.ly"
        \include "undicesimo_continuo.ly"
        \include "dodicesimo_continuo.ly"
        \include "tredicesimo_continuo.ly"
        \include "quattordicesimo_continuo.ly"
        \include "quindicesimo_continuo.ly"
        \include "sedicesimo_continuo.ly"
        \include "diciassettesimo_continuo.ly"
        \include "diciottesimo_continuo.ly"
      }
      
      \new Staff = bassStaff {
        \set Staff.instrumentName = "Basso"
        \include "primo_basso.ly"
        \include "secondo_basso.ly"
        \include "terzo_basso.ly"
        \include "quarto_basso.ly"
        \include "quinto_basso.ly"
        \include "sesto_basso.ly"
        \include "settimo_basso.ly"
        \include "ottavo_basso.ly"
        \include "nono_basso.ly"
        \include "decimo_basso.ly"
        \include "undicesimo_basso.ly"
        \include "dodicesimo_basso.ly"
        \include "tredicesimo_basso.ly"
        \include "quattordicesimo_basso.ly"
        \include "quindicesimo_basso.ly"
        \include "sedicesimo_basso.ly"
        \include "diciassettesimo_basso.ly"
        \include "diciottesimo_basso.ly"
      }
    >>
  }
}
