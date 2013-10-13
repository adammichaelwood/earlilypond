%%  grave.ly
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
        \relative c' {
          \time 4/4 
          \clef treble
            r16 e [a16. b32] c8 [b\trill] a16. [e'32 a,16. b32] c8 [b\trill]                   | % 1
            a16. [e'32 c16. a32] f'16. [f32 f16. f32] f16. [d32 b16. g32] e'16. [e32 e16. e32] | % 2
            e16. [gis32 a16. a,32] d16. [d32 d16. d32] \times 4/6 {d16-. [gis (a b a b)]} \times 4/6 {d,16-. [gis (a b a b)]} | % 3
           \times 2/3 {d,16 [(f e) } f8] r16 f [e16. d32] c16. [e32 a16. c,32] b8.\trill [a16] | % 4
           \times 4/6 {d,16-. [gis (a b a b)]} \times 4/6 {d,16-. [gis (a b a b)]} \times 2/3 {d,16 [(f e) } f8] r16 f [e16. d32] | % 5
           \times 2/3 {c16 [e e]} \times 2/3 {a [e e]} \times 2/3 {c' [e, e]} \times 2/3 {e' [e, e]} c'16. [ e32 a16. d,32] b8.\trill a16 | % 6
        }
      >>
      
      \new Staff <<
        \set Staff.instrumentName = #"Viola"
        \set Staff.shortInstrumentName = #""
        \relative c'' {
          \time 4/4 
          \clef alto
          a8 [a,] r gis' a [a,] r gis'                                       | % 1
          a8 [a,] r16 a' [f16. d32] b'16. [b32 b16. b32] b16. [g32 e16. d32] | % 2
          a'16. [a32 a16. a32] a16. [cis32 d16. d,32] gis8 r gis r | % 3
          gis4 r16 gis [a16. b32] e,8 [e16. f32] e8 [e] | % 4
          b8 r b r b4 r16 d [c16. b32] | % 5
          a8 [a] e' [e] e [e16. d32] e,8 [b'] | % 6
        }
      >>
      
      \new Staff <<
        \set Staff.instrumentName = #"Flauto dolce"
        \set Staff.shortInstrumentName = #""
        \relative c''' {
          \time 4/4 
          \clef treble
          a8 [a,] r gis' a [a,] r gis'                                       | % 1
          a8 [a,] r16 a' [f16. d32] b'16. [b32 b16. b32] b16. [g32 e16. d32] | % 2
          a'16. [a32 a16. a32] a16. [cis32 d16. d,32] gis8 r gis r | % 3
          gis4 r16 gis [a16. b32] e,8 [e16. b'32] gis8.\trill [a16] | % 4
          gis8 r gis r b4 r16 gis [a16. b32] | % 5
          e,8-. [a-. c-. e-.] c16. [e,32 a16. b32] gis8.\trill [a16] | % 6
        }
      >>
      
      \new Staff <<
        \set Staff.instrumentName = #"Viola da gamba"
        \set Staff.shortInstrumentName = #""
        \relative c {
          \time 4/4 
          \clef alto
            r16 e [a16. b32] c8 [b\trill] a16. [e'32 a,16. b32] c8 [b\trill]                   | % 1
            a16. [e'32 c16. a32] f'16. [f32 f16. f32] f16. [d32 b16. g32] e'16. [e32 e16. e32] | % 2
            e16. [gis32 a16. a,32] d16. [d32 d16. d32] \times 4/6 {d16-. [gis (a b a b)]} \times 4/6 {d,16-. [gis (a b a b)]} | % 3
           \times 2/3 {d,16 [(f e) } f8] r16 f [e16. d32] c16. [e32 a16. c,32] b8.\trill [a16] | % 4
           \times 4/6 {d16-. [gis (a b a b)]} \times 4/6 {d,16-. [gis (a b a b)]} \times 2/3 {d,16 [(f e) } f8] r16 f [e16. d32] | % 5
           c8 [c'] a [b] e, [e16. f32] b,8.\trill [a16] | % 6
        }
      >>
      
      \new FiguredBass \figuremode {
          \set figuredBassAlterationDirection = #LEFT
          \set figuredBassPlusDirection = #LEFT
          \override VerticalAxisGroup #'minimum-Y-extent = #'()
          \override BassFigureAlignment #'stacking-dir = #UP
          \override FiguredBass.BassFigure #'font-size = #-2
          s4 <4 6>8 <2 4\+> <6> s <4 6> <4\+> | % 1
          <6>8 s4. <7>8 s <7> s               | % 2
          <7>8 s <5 7> s <_+ 7> s4. | % 3
          <_+ 7>4 s s8 <6> <_+> s | % 4
          <4>4 s <7> s16 <_+>8. | % 5
          s4. <6>8 s <6> <_+> s | % 6
      }
      
      \new Staff <<
        \set Staff.instrumentName = #"Fondamento"
        \set Staff.shortInstrumentName = #""
        \relative c {
          \clef bass
          \time 4/4
          a8 [c16. d32] e8 [d] c8 [c'16. d32] e8 [d] | % 1
          c8 [a] d[d,] g [g] c, [c]                  | % 2
          f8 [f] b, [b] e r e r | % 3
          e4 r16 e [fis16. gis32] a8 [c,16. d32] e8 [e,] | % 4
          f8 r f' r gis,4 r16 e'16 [fis16. gis32] | % 5
          a8 [a,] a' [gis] a [c,16. d32] e8 [e,] | % 6
        }
      >>
    >>
  }