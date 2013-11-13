%% recitatif1.ly
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

%% VOICE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Avoice = {
  \clef treble
  \key g \major
  \relative c'' {
    \bin
    \tempo "Récitatif"
    \autoBeamOff
    r4 r8 b16 b e4. fis16 g
    a,4 a8 c b4 (\vplaintehoriz a8) g16 fis
    g8 \grace fis4 (e8) r g ~ g16 g g a \vmordant b8 b16 c
    d4 r8 b16 b e8 c16 c \vplaintehoriz a8. a16
    \vmordant fis4 fis8 d' \vplaintehoriz b16 b c d e8. c16
    \vmordant a8. a16 a8 b \grace a4 (g) r8 d'16 d
    \vmordant dis8 d16 d e8. fis16 g4 g8 r
    c,4. c16 c \vmordant a8. a16 a8. d16
    \vmordant b4 r16 d e fis g8. fis16 e8. d16
    \grace d4 (cis8.) b16 \vplaintehoriz ais8. cis16 fis,4 fis8 r
    cis'4 c16 d e cis fis4 e8 g
    \vmordant cis,4. c16 d \grace cis4 (b4) r16 b b c
    \vmordant gis4 r8 b16 c d4. \vplaintehoriz c16 b
    \bar "|." \break
  }
}

Alyrics = \lyricmode {
  Les fou- gueux a- qui- lons ont fait place au Ze- pi- re
  Pan, fait re- son- ner son haut- bois,
  et dé- jà l'a- mou- reux sa- ty- re, pour- suit
  d'un pied lé- ger les nim- phes de ces bois.
  Cha- que jour la bril- lan- te Flo- re,
  Pa- re nos champs de mil- le fleurs,
  et le so- leil, se- chant les la- rmes de l'Au- ro- re,
  Donne un nou- vel e- clat a leurs vi- ves cou- leurs.
  Tout s'em- bel- lit, les hu- mi- des Na- ya- des,
}

%% FIGURED BASS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Abassefig = \figuremode {
  s1
  <2>2 <5/>
  s1
  <6>2 <6 5>
  \bassFigureExtendersOn
  <_>8 <_> <_>
  \bassFigureExtendersOn
  s4. <6 5>4
  <4>4 <3> s2
  \bassFigureExtendersOn
  <6\\>8 <6\\>16 <6\\>
  \bassFigureExtendersOff
  <6>8. <6\\>16 s2
  <6> <5/>
  s <6\\ 5>
  <_+>
  \bassFigureExtendersOn
  <_>4 <_>
  <_>2 \bassFigureExtendersOff <6>4 <6\\ 5>
  <4> <_+> <_+>8
  \bassFigureExtendersOn
  <_+> <_+>
  \bassFigureExtendersOff
  s8
  <_+>2 <5/>
}

Abasse = {
  \clef bass
  \key g \major
  \bin
  \relative c {
    e1 ~
    e2 dis
    e ~ e
    b c 
    d8 [e] fis [d] g4 c,
    d d, g g'
    fis8. [a16] g8. [fis16] e2 ~
    e fis
    g e
    fis ~ fis
    e d4 e
    fis fis, b8 [cis] dis [b]
    e2 gis,
  }
  \bar "|."
}
