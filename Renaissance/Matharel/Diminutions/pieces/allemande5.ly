%%  allemande5.ly
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

AAsoprano = \relative c' {
  \clef treble
  \key f \major
  \time 4/4
  \repeat volta 2 {
    r4 f c' d
    c bes a g
    f f g8 [a] bes4
    a g a2
    f4 f c' d
    c bes a g
    f f g a8 [bes]
    c [bes a g] a2
  }
  \repeat volta 2 {
    r4 f a bes
    a g f2
    d4 e f2
    d4 e f2
    r4 f a bes
    a g f2
    d4 e f2
    d4 e f2
  }
}

AAalto = \relative c' {
  \clef treble
  \key f \major
  \time 4/4
  \repeat volta 2 {
    r4 c c f
    f f f d
    d a e' f
    f d d2
    c4 c f f
    f f f d
    d a e' f~
    f8 [f f d] f2
  }
  \repeat volta 2 {
    r4 c f f
    f d d c
    f e d c
    f e d2
    r4 c f f
    f d d c
    f e d c
    f c c2
  }
}

AAtenor = \relative c' {
  \clef "G_8"
  \key f \major
  \time 4/4
  \repeat volta 2 {
    r4 a a bes
    c d c bes
    a a c d
    c bes a2
    a4 a a bes
    c d c bes
    a a c4. bes8
    a8 [f a bes] c2
  }
  \repeat volta 2 {
    r4 a c d
    c bes a a
    bes g f a
    bes g f2
    r4 a c d
    c bes a a
    bes g f a
    bes g f2
  }
}

AAbass = \relative c {
  \clef bass
  \key f \major
  \time 4/4
  \repeat volta 2 {
    f2 f4 bes,
    f'4 bes, f' g
    d f c bes
    f' g d2
    f f4 bes,
    f' bes, f' g
    d f c f
    f8 [bes, f' g] f2
  }
  \repeat volta 2 {
    r4 f f bes,
    f' g d f
    bes, c d f
    bes, c d2
    r4 f f bes,
    f' g d f
    bes, c d f
    bes, c f2
  }
}

AAScore = \score {
  \new StaffGroup  <<
    \new Voice = "Soprano" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      \AAsoprano
    >>
    \new Voice = "Alto" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      \AAalto
    >>
    \new Voice = "Tenor" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      \AAtenor
    >>
    \new Voice = "Basse" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      \AAbass
    >>
  >>
  \header {
    piece = "5. Allemande"
    number = "1"
  }
  \layout {
    indent = 0
  }
}
