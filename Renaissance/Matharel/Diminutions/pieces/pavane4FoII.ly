%%  pavane4FoII.ly
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

ABsoprano = \relative c'' {
    \set Staff.instrumentName = #"Superius"
    \clef treble
    \key f \major
    \bla
    \repeat volta 2 {
      g4. f8 g4 a
      bes4 d4. c8 bes4
      a c c bes
      a8 [g a bes] c [a bes c]
      bes [a g f] g [a bes c]
      d4 c bes a8 [g]
      \ficta fis2. \ficta fis!4
      \ficta fis!1
      bes2. bes4
      bes2 bes
      c2. c4
      c2 c4 bes8 [a]
      g4 d' c8 [bes a g]
      \ficta fis4 g2 \ficta fis!4
      g2. g4
      g1\break
    }
    \repeat volta 2 {
      g2 g4 d'8 [c]
      bes4 g g d'8 [c]
      bes4 g g c8 [bes]
      a4 f f c'8 [bes]
      a4 f f2
      bes4. a8 g [a bes c]
      d4 c8 [bes] c [bes a g]
      \ficta fis2. \ficta fis!4
      \ficta fis2 \ficta fis!
      bes2. bes4
      bes2 bes
      c2. c4
      c2 c4 bes8 [a]
      g4 d' c8 [bes a g]
      \ficta fis4 g2 \ficta fis!4
      g2. g4
    }
    g\longa*1/4
    \bar "|."
}

ABalto = \relative c' {
    \set Staff.instrumentName = #"Contratenor"
    \clef "G_8"
    \key f \major
    \bla
    \repeat volta 2 {
      bes4. c8 d8 [e] f4
      bes,4 g8 [a] bes [c d e]
      f2. f4
      f2 f
      d2. d4
      d2 d
      d1
      d
      f2. f4
      f2 f
      f2. f4
      f2 f
      d e
      d4 c d2
      bes2. bes4
      bes1
    }
    \repeat volta 2 {
      bes2 bes4 g8 [a]
      bes4 bes bes g8 [a]
      bes4 bes bes f8 [g]
      a4 a a f8 [g]
      a4 a a2
      d2. d4
      d8 [e f g] f [e d c]
      d2. d4
      d2 d
      \ficta f!2. f4
      f2 f
      f2. f4
      f2 f
      d e
      d4 c d2
      bes2. bes4
    }
    bes\longa*1/4
}

ABtenor = \relative c' {
    \set Staff.instrumentName = #"Tenor"
    \clef "G_8"
    \key f \major
    \bla
    \repeat volta 2 {
      d2. d4
      d2 d
      c2. c4
      c2 c4 a
      bes2. bes4
      bes2 bes
      a2. a4
      a2 a
      d2. d4
      d2 d
      c2. c4
      c2 c
      bes2 c4. bes8
      a4 g a2
      g2. g4
      g2 g
    }
    \repeat volta 2 {
      d'2. d4
      d2 d
      d2 d4 c8 [bes]
      c2. c4
      c2 c
      bes2. bes4
      bes2 bes
      a2. a4
      a2 a
      d2. d4
      d2 d
      c2. c4
      c2 c
      bes c4. bes8
      a4 g a2
      g2. g4
    }
    g\longa*1/4
}

ABbass = \relative c' {
    \set Staff.instrumentName = #"Bassus"
    \clef bass
    \key f \major
    \bla
    \repeat volta 2 {
      g2 g4 f
      g4. f8 g [a] bes4
      f2. f4
      f2 f
      g2. g4
      g2 g
      d2. d4
      d1
      bes2. bes4
      bes2 bes
      f'2. f4
      f2 f
      g c,
      d4 \ficta ees d2
      g,2. g4
      g1
    }
    \repeat volta 2 {
      g2 g4 bes'8 [a]
      g4 g g bes8 [a]
      g4 g g8 [bes a g]
      f2 f8 [bes a g]
      f2 f8 [d e f]
      g2. g4
      g4 a8 [bes] a [g f e]
      d2. d4
      d2 d
      bes2. bes4
      bes2 bes
      f'2. f4
      f2 f
      g c,
      d4 \ficta ees d2
      g,2. g4
    }
    g\longa*1/4
}

ABScore = \score {
  \new StaffGroup  <<
    \new Voice = "Soprano" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      \ABsoprano
    >>
    \new Voice = "Alto" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      \ABalto
    >>
    \new Voice = "Tenor" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      \ABtenor
    >>
    \new Voice = "Basse" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      \ABbass
    >>
  >>
  \header {
    piece = "Pavane"
    number = "2"
    subopus = "4e livre Fo. II"
  }
}
