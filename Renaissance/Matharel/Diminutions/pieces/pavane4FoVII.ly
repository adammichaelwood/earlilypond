%%  pavane4FoVII.ly
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

ACsoprano = \relative c'' {
    \clef treble
    \key f \major
    \bla
    \repeat volta 2 {
      d1
    }
    \repeat volta 2 {
    }
}

ACalto = \relative c' {
    \clef "G_8"
    \key f \major
    \bla
    \repeat volta 2 {
      f1
    }
    \repeat volta 2 {
    }
}

ACtenor = \relative c' {
    \clef "G_8"
    \key f \major
    \bla
    \repeat volta 2 {
      bes1
    }
    \repeat volta 2 {
    }
}

ACbass = \relative c' {
    \clef bass
    \key f \major
    \bla
    \repeat volta 2 {
      bes1
    }
    \repeat volta 2 {
    }
}

ACScore = \score {
  \new StaffGroup  <<
    \new Voice = "Soprano" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      \ACsoprano
    >>
    \new Voice = "Alto" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      \ACalto
    >>
    \new Voice = "Tenor" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      \ACtenor
    >>
    \new Voice = "Basse" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      \ACbass
    >>
  >>
  \header {
    piece = "Pavane"
    number = "3"
    subopus = "4e livre Fo. VII"
  }
}
