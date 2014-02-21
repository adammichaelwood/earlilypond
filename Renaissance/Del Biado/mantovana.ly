%%  mantovana.ly
%%  This file is part of the Earlilypond project
%%  
%%  Copyright (c) 2014 Benjamin Coudrin <benjamin.coudrin@gmail.com>
%%                All Rights Reserved
%%
%%  This program is free software. It comes without any warranty, to
%%  the extent permitted by applicable law. You can redistribute it
%%  and/or modify it under the terms of the Do What The Fuck You Want
%%  To Public License, Version 2, as published by Sam Hocevar. See
%%  http://sam.zoy.org/wtfpl/COPYING for more details.

\version "2.16.2"
\include "../../include/format.ily"
\include "../../include/notation.ily"

\header {
  composer = "Giuseppino del Biado"
  composerDate = "15xx-1616"
  date = "1600"
  title = "La Mantovana"
  sources = ""
}

\paper {
  bookTitleMarkup = \pieceBigTitleMarkup
}

\layout {
  \layoutCommons
  \context {
    \Score
    \override SpacingSpanner #'uniform-stretching = ##t
    %\remove Bar_engraver
    \override BarLine #'transparent = ##f
    \remove "System_start_delimiter_engraver"
  }
}

soprano = \relative c'' {
  \set Staff.instrumentName = #"Soprano"
  \time 2/4
  
  % main
  \clef "treble"
  \repeat volta 2 {
    a8 [b] c [d]
    e4 e8 [e]
    \slurDashed
    f4 (f8) [f]
    e4 e8 [(e)]
    d4 d8 [d]
    c4 d8 [c]
    << 
      \new Voice="mantoaltun" { \voiceOne b4 b8 [b] }
      { \voiceTwo \tweak #'font-size #-2 b8 [\tweak #'font-size #-2 a] \tweak #'font-size #-2 b [\tweak #'font-size #-2 c] }
    >>
    <<
      \new Voice="mantoaltdeux" {\voiceOne a2}
      { \voiceTwo \tweak #'font-size #-2 a4 \tweak #'font-size #-2 a }
    >>
  }
  \repeat volta 2 {
    a'4 a8 [a]
    g4 g8 [g]
    f4 f8 [f]
    e2
    c8 [d] e [c]
    f4 e
    d4. e8
    c2
    c8 [d] e [f]
    d4 b
    b8 [c] d [e]
    c4 a
    a8 [b] c [d]
    e4 e8 [e]
    f4 f8 [f]
    e4 e8 [e]
    d4 d8 [d]
    c4 d8 [c]
    b [a] b4
    a2
  }  
}

alto = \relative c'' {
  \set Staff.instrumentName = #"Alto"
  
  % main
  \clef "treble"
  \repeat volta 2 {
    r2
    a4 a8 [a]
    a4 a8 [a]
    c4 c8 [c]
    b4 b8 [b]
    a4 a8 [a]
    gis4 g8 [g]
    a4 e
  }
  \repeat volta 2 {
    cis'4 c8 [d]
    b4 b8 [b]
    a4 a8 [d]
    c2
    g4. a8
    a4 c
    b2
    g
    a4. a8
    g2
    g4. g8
    f2
    f4. f8
    g4 g8 [g]
    a4 a8 [a]
    g4 c8 [c]
    b4 b8 [b]
    a4 a
    \set suggestAccidentals = ##t
    gis4. gis8
    e2
  }
}

tenor = \relative c' {
  \set Staff.instrumentName = #"Tenor"
  
  % main
  \clef "G_8"
  \repeat volta 2 {
    r2
    c!4 c8 [c]
    d4 f8 [f]
    g4 g8 [g]
    g4 g8 [g]
    e4 e8 [e]
    e4 e8 [e]
    cis2
  }
  \repeat volta 2 {
    e4 e8 [fis]
    g [d] d [d]
    f [a] a [a]
    a2
    e4. e8
    f4 g
    g2
    e
    e8 [d] c [c]
    b4 d
    d8 [c] b [c]
    a4 c
    c8 [b] a [g]
    c4 c8 [c]
    c4 c8 [c]
    c4 g'8 [g]
    g4 g8 [g]
    e4 f8 [e]
    e2
    cis
  }
}

basse = \relative c' {
  \set Staff.instrumentName = #"Basse"
  
  % main
  \clef bass
  \repeat volta 2 {
    r2
    a4 a8 [a]
    d,4 d'8 [d]
    c4 c8 [c]
    g4 g8 [g]
    a4 a8 [a]
    e4 e8 [e]
    a2
  }
  \repeat volta 2 {
    a4 a8 [d]
    g,4 g8 [g]
    d'4 d8 [d]
    a4 a8 [b]
    c4. a8
    d4 c
    g2
    c,4 c'
    a4. f8
    g4 g,
    g'4. e8
    f4 f,
    f'4. d8
    c4 c8 [c]
    f4 f8 [f]
    c4 c'8 [c]
    g4 g8 [g]
    a4 a8 [a]
    e2
    a,
  }
}

soplyrics = \lyricmode {
  Fug- gi Fug- gi Fug- gi da que- sto cie- lo
  As- pro e du- ro spie- ta- _ to _ ge- lo
Tu che tutto imprigioni e leghi
Né per pianto ti frangi o pieghi
fier tiranno, gel de l'anno
fuggi fuggi fuggi là dove il Verno
su le brine ha seggio eterno.
}

\score {
  \new StaffGroup  <<
    \new Voice = "Soprano" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \soprano >>
    \new Lyrics \lyricsto Soprano { \soplyrics }
    \new Voice = "Alto" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \alto >>
    \new Voice = "Tenor" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \tenor >>
    \new Voice = "Basse" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \basse >>
  >>
}
