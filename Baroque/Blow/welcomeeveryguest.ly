%%  welcomeeveryguest.ly
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
}

\paper {
  
}

\layout {
  \layoutCommons
  #(layout-set-staff-size 16)
}

\score {
  \relative c {
    \clef bass
    \set Staff.keySignature = #`(((-1 . 3) . ,FLAT)
                                 ((-1 . 0) . ,FLAT)
                                 ((-2 . 3) . ,FLAT))
    #(set-accidental-style 'forget)
    \time 6/3
    \times 4/3 {
    a4 a' gis a e a
    ces, d e d e e,
    a a' gis a e a
    ces, d e d e e, \noBreak
    a a' gis a e a \break
    ces, d e d e e,
    a a' gis a e a
    ces, d e fes g g,
    ces c' b c g c \break
    e,fes g fes g g,
    ces a' gis a e a
    ces, d e d e e,
    a a' gis a e a \break
    ces, d e d e e,
    a a' gis a e a
    ces, d e d e e,
    a a' gis a e a
    ces, d e fes g g, \break
    ces c' b c g c
    e,fes g fes g g,
    d' d' cis d a d
    fes, g a g a a,
    d d' cis d a d \noBreak
    fes, g a g a a, \break
    d d a b ces d
    e a gis a e a
    ces, d e d e e,
    a a' gis a e a
    ces, d e d e e, \break
    a a' gis a e a
    ces, d e d e e,
    a a' gis a e a
    ces, d e d e e,
    a a' gis a e a \break
    d, d' cis d a d
    fes, g a g a a,
    d d' cis d a d
    fes, g a g a a,
    d d a b ces d\break
    e a gis a e a
    ces, d e d e e,
    a a' gis a e a
    ces, d e d e e,
    a a' gis a e a \bar "||"
    ces, d e fes g g,
    ces c' b c g c
    e, fis g a b b,
    e e' dis e b e
    g, a b a b b, \noBreak
    e a gis a e a \break
    ces, d e d e e,
    a a' gis a e a
    ces, d e d e e,
    a a' gis a e a
    ces, d e d e e, \break
    a a' gis a e a
    ces, d e d e e,
    a a' gis a e a
    ces, d e d e e,
    a a' gis a e a \break
    d, d' cis d a d
    fes, g a g a a,
    d d' cis d a d
    fes, g a g a a,
    d d a b ces d \break
    e a gis a e a
    ces, d e d e e,
    a a' gis a e a
    ces, d e d e e,
    a a' gis a e a \bar "||"
    \set Staff.keySignature = #`(((-1 . 3) . ,SHARP)
                                 ((-1 . 0) . ,SHARP)
                                 ((-2 . 3) . ,SHARP))
    d, d' cis! d a d
    fis,! g a g a a,
    d d' cis d a d
    fis, g a g a a,
    d e fis g a a,
    a a' gis a e a
    cis,! d e d e e,
    a a' gis a e a
    d, d' cis d a d
    fis, g a g a a,
    d d' cis d a d
    fis, g a g a a,
    d d' cis d a d
    fis, g a g a a,
    d e fis g a a,
    d1. \bar "|."
    }
  }
}
