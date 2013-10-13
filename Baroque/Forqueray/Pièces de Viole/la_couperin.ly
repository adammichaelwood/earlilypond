%%  la_couperin.ly
%%  This file is part of the Earlilypond project
%%  Copyright (c) 2012 Benjamin Coudrin <benjamin.coudrin@gmail.com>
%%                All Rights Reserved
%%
%%  This program is free software. It comes without any warranty, to
%%  the extent permitted by applicable law. You can redistribute it
%%  and/or modify it under the terms of the Do What The Fuck You Want
%%  To Public License, Version 2, as published by Sam Hocevar. See
%%  http://sam.zoy.org/wtfpl/COPYING for more details.

\version "2.14.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\paper {
  line-width    = 190\mm
  left-margin   = 10\mm
  top-margin    = 10\mm
  bottom-margin = 20\mm
  ragged-last-bottom = ##t 
  ragged-bottom = ##f
  annotate-spacing = ##f
  #(define page-breaking ly:page-turn-breaking)
}

\book {
  \header {
    title = "La Couperin"
    %subtitle = \markup \center-column { "Sonata n.5 in mi minore "\small \italic "(RV 40)" }
    composer =  \markup \right-column { "A. Forqueray" \small "(1672-1745)" }
    tagline = ""
    copyright = \markup { "Copyright : " \char ##x00A9 " 2012 Benjamin Coudrin. Copyleft : released under cc-by-3.0 License" }
  }

  \score {
    \new StaffGroup <<
      \new Staff <<
        %\set Staff.instrumentName = #"Viola"
        %\set Staff.shortInstrumentName = #""
        \relative c {
          \tempo "Noblement et marqué"
          \key a \minor
          \time 2/4 
          \clef bass
          \repeat volta 2 {
            <d d,>4 d'-2                                                                                 | % 1
            <a, a,> \clef alto cis'8-3_\markup{\bold \italic p}[ a-0]                                    | % 2
            f'4-2\stopped d,-1 e-2 \clef bass cis8_\markup{\bold \italic t}[ a_\markup{\bold \italic t}] | % 3
            f'8-1[ a-0 b cis]                                                                            | % 4
            d8\stopped[ a-0 \set fingeringOrientations = #'(left) <g e-4> a-0]                           | % 5
            <f d>8\stopped[ \clef alto d' f g]                                                           | % 6
            a8\stopped[ d,-0 <c fis,> d-0]                                                               | % 7
            <bes g>8[ d-0 e f]                                                                           | % 8
            g8\stopped[ c, <bes e,> c]                                                                   | % 9
            \clef bass <a f>4 f,-3                                                                       | % 10
            g'4-4 e,8_\markup{\bold \italic t}[ c_\markup{\bold \italic t}]                              | % 11
            a'8[ f'-1 c'-3 d-0]                                                                          | % 12
            bes8\stopped [ g,] \clef alto 
            << {\voiceOne d''8[ e-2]} \new Voice {\voiceTwo bes8[ c16-3( bes-1)]} >> \oneVoice           | % 13
            << {\voiceOne f'4-4\stopped}
            \new Voice {\voiceTwo a,8[ \clef bass f,-2]} >> \oneVoice f'4-4\stopped                      | % 14
          }
        }
      >>
      
      \new FiguredBass \figuremode {
          \set figuredBassAlterationDirection = #LEFT
          \set figuredBassPlusDirection = #LEFT
          \override VerticalAxisGroup #'minimum-Y-extent = #'()
          \override BassFigureAlignment #'stacking-dir = #UP
          \override FiguredBass.BassFigure #'font-size = #-2
            s2                | % 1
            <4>4 <_+>         | % 2
            s2                | % 3
            <4>4 <5/>         | % 4
            <5+>4 <6>8 <6\\>8 | % 5
            s4 <5/>           | % 6
            s2                | % 7
            <4/>4 s4          | % 8
            <_->4 s4          | % 9
            <7->4 s4          | % 10
            s2                | % 11
            <4>4 <5/>         | % 12
            <7 9> <8>         | % 13
            <_- 7> s8 <6\\>   | % 14
            s4 <6>            | % 15
        }
      
      \new Staff <<
        %\set Staff.instrumentName = #"Basso"
        %\set Staff.shortInstrumentName = #""
        \relative c {
          \clef bass
          \key a \minor 
          \time 2/4
          \repeat volta 2 {
            <d d,>4 r   | % 1
            <a a,>4 r   | % 2
            d, d'       | % 3
            a cis8[ a]  | % 4
            f'4. e8     | % 5
            d4 cis      | % 6
            d d'        | % 7
            c, fis8[ d] | % 8
            g4 bes      | % 9
            c, e8[ c]   | % 10
            f4 f,       | % 11
            c' e,8[ c]  | % 12
            a'4 f'      | % 13
            g, g'       | % 14
            f, a8[ f]   | % 15
          }
        }
      >>
    >>
    
    %\include "settings.ly"
  }
  
}
