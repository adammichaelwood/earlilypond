%%  v1.ly
%%  This file is part of the Earlilypond project
%%  
%%  Copyright (c) 2013 Benjamin Coudrin <benjamin.coudrin@gmail.com>
%%                All Rights Reserved
%%
%%  This program is free software. It comes without any warranty, to
%%  the extent permitted by applicable law. You can redistribute it
%%  and/or modify it under the terms of the Do What The Fuck You Want
%%  To Public License, Version 2, as published by Sam Hocevar. See
%%  http://sam.zoy.org/wtfpl/COPYING for more details.

AAsettings = {
  \key g \minor
  \time 2/2
}

AAsop = \relative c'' {
  \clef treble
  \AAsettings
  \autoBeamOff
  c2. ees4
  \grace ees8 (d2) d4 r
  f2. d4
  \grace d8 (ees2) c4 r
  r ees \vplaintehoriz c c
  \grace bes8 (a2\stopped) a4 a
  d4. ees8 \vplaintehoriz c4 bis8 c
  bis2\stopped bes4 r
  g2. bes4
  \grace bes8 (a2) a4 r
  c2. a4
  \grace a8 (bes2) g4 r
  \bar "|."
}

AAlyr = \lyricmode {
  Mi- se- re- re me- i De- us
  Se- cun- dum mag- nam
  mi- se- ri- cor- di- am tu- am
  Mi- se- re- re me- i De- us
}

AAfig = \figuremode {
  \figSettings
  s1
  \once \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  \once \override Staff.BassFigureAlignmentPositioning #'Y-offset = #'1.5
  <6- 4 2>
  <5/>
  s
  s
  s
  <6>2 <5/>
  <_+>1
  <_->
  \once \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  \once \override Staff.BassFigureAlignmentPositioning #'Y-offset = #'0.5
  <6- 4 2>
  <5/>
  s
}

AAbas = \relative c {
  \clef bass
  \AAsettings
  c2 c'
  c1
  bis
  c
  c,
  f
  fis
  g
  g,2 g' ~
  g1
  fis
  g2 r4 g
}

AAmusic = \new StaffGroup  <<
  \set StaffGroup.instrumentName = \markup {
    \fontsize #2 \italic
    \concat { "P" \override #'(baseline-skip . 2) \super "r" " Verset"}
  }
  \new Voice = "AAsop" <<
    \staffSettings
    \AAsop
  >>
  
  \new Lyrics \lyricsto AAsop {
    \lyrSettings
    \AAlyr
  }
  
  \new Staff <<
    \staffSettings
    \AAfig
    \AAbas
  >>
>>
