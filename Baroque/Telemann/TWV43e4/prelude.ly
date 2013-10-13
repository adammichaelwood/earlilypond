%%  prelude.ly
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
    \header { piece = "Prélude" }
    \new StaffGroup <<
      \new Staff <<
        \set Staff.instrumentName = #"Flûte Traversiere"
        \set Staff.shortInstrumentName = #""
        \relative c'' {
          \key e \minor
          \time 4/4 
          \clef treble
          \tempo "A discretion"
            g1 ~ | % 1
            g8. [g16 f8.-+ e16] e'2 ~ | % 2
            e4 e8. [b16] b'4. b8 | % 3
        }
      >>
      
      \new Staff <<
        \set Staff.instrumentName = #"Violon"
        \set Staff.shortInstrumentName = #""
        \relative c'' {
          \key e \minor
          \time 4/4 
          \clef treble
          e4. b8 g4 b | % 1
          e,2 r8 g [fis8. e16] | % 2
          b'4. d8 d4 (cis8.) [d16] | % 3
          cis4.-+ cis8 dis4-. e-. | % 4
        }
      >>
            
      \new Staff <<
        \set Staff.instrumentName = #"Basse de Viole"
        \set Staff.shortInstrumentName = #""
        \relative c {
          \key e \minor
          \time 4/4 
          \clef bass
            e1 | % 1
            c1 | % 2
            gis1 | % 3
        }
      >>
      
      \new FiguredBass \figuremode {
          \set figuredBassAlterationDirection = #LEFT
          \set figuredBassPlusDirection = #LEFT
          \override VerticalAxisGroup #'minimum-Y-extent = #'()
          \override BassFigureAlignment #'stacking-dir = #UP
          \override FiguredBass.BassFigure #'font-size = #-2
          s1 | % 1
          s1 | % 2
          <5>1 | % 3
      }
      
      \new Staff <<
        \set Staff.instrumentName = #"Basse continuë"
        \set Staff.shortInstrumentName = #""
        \relative c {
          \key e \minor
          \clef bass
          \time 4/4
           e1 | % 1
           c1 | % 2
           gis1 | % 3
        }
      >>
    >>
  }