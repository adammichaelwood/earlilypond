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
    c4 c16 c d e fes8. [e16] d [c] b [a]
    \vmordant gis8. a16 b8. c16 c4 (\vmordant b8.) a16
    a4 r16 c c b \vmordant a4. \grace g4 (fis8)
    b8. a16 \vplaintehoriz g8. fis16 g4 g8 e
    c'8. c16 c8. d16 \vmordant b4. b16 e
    \vmordant dis4 d8 e \grace e4 (fis8.) b,16 b8 [a16] b
    \grace b4 (cis4.) c8 f8. g16 \vmordant f8. e16
    \vmordant dis4 \grace cis4 (b8) fis' g8. fis16 e [d] c [b]
    c4 a8. c16 g4 (\vmordant fis8) fis16 g
    \grace fis4 (e2) r
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
  font ser- pen- ter __ _ leurs eaux sur les ga- zons nais- sans,
  et les Syl- vains, les Fau- nes, les Dry- a- des,
  cé- lè- brent par leurs jeux, le re- tour du Prin- tems.
  Et les Syl- vains, les Fau- nes, les Dry- a- des,
  cé- lè- brent par leurs jeux, le re- tour du Prin- tems.
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
  s <6 5 _->
  <4\+>8. <6>16 <6\\>4 <6 4> <_+>
  \bassFigureExtendersOn
  <_>8 <_> <_>
  \bassFigureExtendersOn
  
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
    a2 d~
    d8. [c16] b8 [a] e'4 e,
    a8. [a'16] a8. [g16] fis8. [fis16] fis8. [e16]
    dis2 e ~
    e4 fis g e
    b'4. e,8 b [b'16 a] gis8 [e]
    a2 ais
    b e,
    a, b
    e, r
  }
  \bar "|."
}
