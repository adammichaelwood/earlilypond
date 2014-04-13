%% javaiscruquenvous.ly
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

\version "2.16.0"

\include "../../../include/format.ily"
\include "../../../include/notation.ily"

\header {
  tagline = \markup { "Copyright : " \char ##x00A9 " 2014 Earlilypond, Benjamin Coudrin" }
  composer = "Anonymous"
  date = "1703"
  title = "J'Avois cru qu'en vous aimant"
  subtitle = \markup \center-column { "Brunetes" "ou petits airs tendres, avec les doubles" "et la basse-continue" }
  sources = \markup \left-column {
    "Sources : "
    \concat {"[1] " \italic "Brunetes ou petits airs tendres, avec les doubles et la basse continue" ", Tome Premier, recueillies par Christophe Ballard, 1703"}
    \with-url #"http://imslp.org/wiki/Brunetes_(Various)" {"http://imslp.org/wiki/Brunetes_(Various)"}
  }
}

\paper {
  bookTitleMarkup = \pieceBigTitleMarkup
}

\layout {
  \layoutCommons
}

Avoice = {
  \clef soprano
  \key d \minor
  \relative c'' {
    \bin
    \autoBeamOff
    \repeat volta 2 {
      \partial 4 g8 a
      bes4. bes8 bes4 (a8) bes
      \vpmordant a2 a4. bes8
      g4. a8 bes4 (\vpmordant a8) g
      fis4 f r g8 a
      bes4. bes8 bes4 (a8) bes
      \vpmordant a2 a4 bes
      g4. a8 fis4. g8
    }
    \alternative {
      {\partial 2. g2.}
      {g2 bes4. c8}
    }
    \repeat volta 2 {
      d4 d \vpmordant d8. (c16) d8. (ees16)
      \vpmordant c2 c4. d8
      bes4. \times 2/3 { c16 [bes c] } \vpmordant c4. bes8
      \vpmordant a4 a a4. bes8
      c4  bes16 [a bes] c (bes4 a8) g
      fis4 g \vpmordant a4. bes8
      c [bes] c [a] bes4 (\vpmordant a8.) g16
    }
    \alternative {
      { g2 bes4. c8}
      { g1 }
    }
    \bar "||" \break
    \repeat volta 2 {
      \partial 4 g8 a
      bes4. \times 2/3 {c16 bes c} 
    }
  }
}

Alyrics = \lyricmode {
  \repeat volta 2 {
    J'A- vois cru qu'en vous ai- mant,
    La dou- ceur se- roit ex- trê- me;
    J'au- rois cru qu'en vous ai- mant,
    Mon sort eut é- té char- 
  }
  \alternative {
    { mant: }
    { mant: Mais, je }
  }
  \repeat volta 2 {
    me trom- pois, he- las!
    Dois- je le di- re moy me- me?
    Vous Sça- vez que je vous ai- me;
    Pour- quoy ne m'ai- mez vous
  }
  \alternative {
    { pas? Mais je }
    { pas? }
  }
}

Abasse = {
  \clef bass
  \key d \minor
  \relative c' {
    \bin
    \autoBeamOff
    \repeat volta 2 {
      \partial 4 g8 d
      g4. g8 ees4 c
      f4. f8 d4 bes
      ees4. e8 c2
      d4 d8 [c] bes4. a8
      g4 g'8 [f] e4 c
      f4 f8 ees d4 bes
      ees c d d,
    }
    \alternative {
      {\partial 2. g2.}
      {g2 g'4. a8}
    }
    \repeat volta 2 {
      bes2 bes,
      f' f4 d
      ees2 c
      d c4. bes8
      a4 d g,2
      d'4 e fis g
      ees c d d,
    }
    \alternative {
      { g2 g'4. a8 }
      { g1 }
    }
  }
}

Abassefig = \figuremode {
  \repeat volta 2 {
    \partial 4 s8 <_+>
    s1
    s1
    s2 <7>4 <6>
    <_+>2 <6>4. <6+>8
    s2 <5/>
    s1
    s2 <_+>
  }
  \alternative {
    {\partial 2. s2.}
    {s1}
  }
  \repeat volta 2 {
    s1
    s
    s2 <6>
    <_+> <4+>
    s1
    <_+>
    s1
  }
  \alternative {
    { s }
    { s }
  }
}

\score {
  \new StaffGroup  <<
    \new Voice = "voix" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \Avoice >>
    \new Lyrics \lyricsto voix { \Alyrics }
    \new Staff <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \figuremode { \Abassefig \Abassefig }
      \Abasse
    >>
  >>
}
