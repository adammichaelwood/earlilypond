%%  dolce.ly
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
      %\new Staff <<
      %  \set Staff.instrumentName = #"Violino grosso"
      %  \set Staff.shortInstrumentName = #""
      %  \relative c {
      %    \time 4/4 
      %    \clef treble
      %  }
      %>>
      
      %\new Staff <<
      %  \set Staff.instrumentName = #"Viola"
      %  \set Staff.shortInstrumentName = #""
      %  \relative c {
      %    \time 4/4 
      %    \clef alto
      %  }
      %>>
      
      \new Staff <<
        \set Staff.instrumentName = #"Flauto dolce"
        \set Staff.shortInstrumentName = #""
        \relative c'' {
          \tempo "Dolce"
          \time 6/8
          \key f \major
          \clef treble
          f4 g8 f8 [g16 e f8] | % 1
          c8 [d e] e4 (f8)    | % 2
        }
      >>
      
      \new Staff <<
        \set Staff.instrumentName = #"Viola da gamba"
        \set Staff.shortInstrumentName = #""
        \relative c' {
          \time 6/8
          \clef alto
          a4 b8 a8 [c16 g a8] | % 1
          a8 b g a4 (a)       | % 2
        }
      >>
      
      \new FiguredBass \figuremode {
          \set figuredBassAlterationDirection = #LEFT
          \set figuredBassPlusDirection = #LEFT
          \override VerticalAxisGroup #'minimum-Y-extent = #'()
          \override BassFigureAlignment #'stacking-dir = #UP
          \override FiguredBass.BassFigure #'font-size = #-2
          <\markup{"Tasto Solo"}>4. | % 1
          s4.                       | % 2
      }
      
      \new Staff <<
        \set Staff.instrumentName = #"Fondamento"
        \set Staff.shortInstrumentName = #""
        \relative c, {
          \clef bass
          \time 6/8
          f8 [(f f)] f [(f f)] | % 1
          f8 [(f f)] f [(f f)] | % 2
        }
      >>
    >>
  }