%%  allegro2.ly
%%  This file is part of the Earlilypond project
%%  
%%  Copyright (c) 2012 Benjamin Coudrin <benjamin.coudrin@gmail.com>
%%                All Rights Reserved
%%
%%  This program is free software. It comes without any warranty, to
%%  the extent permitted by applicable law. You can redistribute it
%%  and/or modify it under the terms of the Do What The Fuck You Want
%%  To Public License, Version 2, as published by Sam Hocevar. See
%%  http://sam.zoy.org/wtfpl/COPYING for more details.

\score {
    \new StaffGroup <<
      \new Staff <<
        \set Staff.instrumentName = #"Violino grosso"
        \set Staff.shortInstrumentName = #""
        \relative c'' {
          \tempo "Allegro"
          \time 2/4 
          \clef treble
          a8 [e'] e4         | % 1
          b16 [c d c] c8 [a] | % 2
        }
      >>
      
      \new Staff <<
        \set Staff.instrumentName = #"Viola"
        \set Staff.shortInstrumentName = #""
        \relative c' {
          \time 2/4 
          \clef alto
          c8 [c' a a~]    | % 1
          a8 [gis a e] | % 2
        }
      >>
      
      \new Staff <<
        \set Staff.instrumentName = #"Flauto dolce"
        \set Staff.shortInstrumentName = #""
        \relative c''' {
          \time 2/4 
          \clef treble
          a8 [e'] e4         | % 1
          b16 [c d c] c8 [a] | % 2
        }
      >>
      
      \new Staff <<
        \set Staff.instrumentName = #"Viola da gamba"
        \set Staff.shortInstrumentName = #""
        \relative c' {
          \time 2/4 
          \clef alto
          a8 [e'] e4         | % 1
          b16 [c d c] c8 [a] | % 2
        }
      >>
      
      \new FiguredBass \figuremode {
          \set figuredBassAlterationDirection = #LEFT
          \set figuredBassPlusDirection = #LEFT
          \override VerticalAxisGroup #'minimum-Y-extent = #'()
          \override BassFigureAlignment #'stacking-dir = #UP
          \override FiguredBass.BassFigure #'font-size = #-2
          s4 <6>            | % 1
          <5 6>8 <_+> s <6> | % 2
      }
      
      \new Staff <<
        \set Staff.instrumentName = #"Fondamento"
        \set Staff.shortInstrumentName = #""
        \relative c {
          \clef bass
          \time 2/4
          a4 c8 [a]       | % 1
          d8 [e] a, [c'] | % 2
        }
      >>
    >>
  }