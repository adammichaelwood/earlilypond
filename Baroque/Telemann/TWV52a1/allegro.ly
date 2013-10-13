%%  allegro.ly
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
          \time 3/4
          \tempo "Allegro"
          \clef treble
          r8 a [a' a a a]                        | % 1
          a8 [(gis16) a] b [a gis fis] e [d c b] | % 2
        }
      >>
      
      \new Staff <<
        \set Staff.instrumentName = #"Viola"
        \set Staff.shortInstrumentName = #""
        \relative c'' {
          \time 3/4 
          \clef alto
          c8 [d e d e c]       | % 1
          b8 [b] e, [e] b' [b] | % 2
        }
      >>
      
      \new Staff <<
        \set Staff.instrumentName = #"Flauto dolce"
        \set Staff.shortInstrumentName = #""
        \relative c'' {
          \time 3/4 
          \clef treble
          r8 a [a' a a a]                        | % 1
          a8 [(gis16) a] b [a gis fis] e [d c b] | % 2
        }
      >>
      
      \new Staff <<
        \set Staff.instrumentName = #"Viola da gamba"
        \set Staff.shortInstrumentName = #""
        \relative c' {
          \time 3/4 
          \clef alto
          r8 a [a' a a a]                    | % 1
          a8 [(gis16) a] b8 [e,8.] d16 [c b] | % 2
        }
      >>
      
      \new FiguredBass \figuremode {
          \set figuredBassAlterationDirection = #LEFT
          \set figuredBassPlusDirection = #LEFT
          \override VerticalAxisGroup #'minimum-Y-extent = #'()
          \override BassFigureAlignment #'stacking-dir = #UP
          \override FiguredBass.BassFigure #'font-size = #-2
          s4 <6>8 s4.       | % 1
          <4>8 <_+> <6> s4. | % 2
      }
      
      \new Staff <<
        \set Staff.instrumentName = #"Fondamento"
        \set Staff.shortInstrumentName = #""
        \relative c' {
          \clef bass
          \time 3/4
          a8 [b c b c a]         | % 1
          e'8 [e,] gis [b gis e] | % 2
        }
      >>
    >>
  }