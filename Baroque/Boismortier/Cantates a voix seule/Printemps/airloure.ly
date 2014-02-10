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

%% DESSUS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Bdessus = {
  \clef french
  \time 6/8
  \key e \minor
  \set StaffGroup.instrumentName = \markup {\fontsize #2 \italic "Air"}
  \relative c'' {
    \tempo "Louré"
    \partial 8 b8_\markup{\italic {Violon, ou Flute traversiere.}}
    e [(fis) g] g, [(\vplaintehoriz fis) e]
    b'4. e,4 b'8
    e [(fis) g] g, [(\vplaintehoriz fis) e]
    b'4. ~ b4 b8
    c4 b8 c4 b8
    \vxmordant a4. g4 a8
    b4 a8 b4 a8
    \vxmordant g4. fis4 g8
    a4 g8 \vxmordant fis4 e8
    \vxmordant dis4. ~ dis4 fis'8
    g4. r8 r fis
    g4. r8 r8 b,8
    cis8 [(dis) e] e8. [(fis16) dis8]
    e4. r8 r fis^\markup{\italic Doux}
    g4. r8 r fis
    g4. r8 r b,
    cis8 [(dis) e] e8. [(fis16) dis8]
    e2.
    r\segno
    r
    r
    r4 r8 r4 b'8
    b [(a) b] b [(\vplaintehoriz a) gis]
    a4 e8 e4 a8
    a [(g) a] a [(\vplaintehoriz g) fis]
    g4 d8 d4 b8
    c [(d) e] a, [(b) c]
    b [(a) g] r8 r a'
    b4. r8 r a
    b4. r8 r d,
    e [(fis) g] g8. [(a16) fis8]
    g4. r8 r b,
    e [(fis) g] g, [(\vplaintehoriz fis) e]
    b'4. e,4 b'8
    e [(fis) g] g, [(\vplaintehoriz fis) e]
    b'4. r4 r8
    r4 r8 r4 b8
    e [(fis) g] g, [(\vplaintehoriz fis) e]
    b'4. e,4 b'8
    e [(fis) g] g, [(\vplaintehoriz fis) e]
    e4. r4 r8
    r2.
    r2.
    r4 r8 r4 b'8 
    c [(b) c] d [(c) d]
    g,4. ~ g4 b8
    a [(b) g] \vxmordant fis4 e8
    e4. ~ e4 b'8
    b4. r8 r b
    b4. r8 r e
    e4. r8 r e
    e4. r8 r fis
    b,4. e
    \vxmordant dis4. r8 r fis
    g4. r8 r fis
    g4. r8 r b,
    cis [(dis) e] e8. [(fis16) dis8]
    e4. r8 r fis8
    g4. r8 r fis
    g4. r8 r b,
    cis [(dis) e] e8. [(fis16) dis8]
    e2^\markup{\bold \italic Fin} r4
    r2.
    r
    r
    r4 r8 r4 a,8
    a4 g8 \vxmordant fis4 e8
    \vxmordant dis4. r4 r8
    r2.
    r4 r8 r4 dis'8
    e [(fis) g] \vxmordant fis4 e8
    \vxmordant dis4. ~ dis4 d8
    e4 e8 \vplaintehoriz cis [(b) c]
    d4 a8 a4 a'8
    b,8 [(cis) d] e [(fis) g]
    \vxmordant cis,4. ~ cis4 c8
    fis,4 fis'8 ais, [(gis) ais]
    b4 fis8 fis4 fis'8
    fis4 b,8 fis'4 b8
    \vxmordant ais4. r8 r cis,
    d4. r8 r cis
    d4. r8 r fis,
    gis [(ais) b] b8. [(cis16) ais8]
    b4. r8 r cis
    d4. r8 r cis
    d4. r8 r fis,
    gis [(ais) b] b8. [(cis16) ais8]
    b4. r4 r8
   \bar "||"  \mark \markup \normalsize { \musicglyph  #"scripts.segno" }
  }
}

%% VOICE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Bvoice = {
  \clef treble
  \key e \minor
  \relative c'' {
    \time 6/8
    \autoBeamOff
    \partial 8 r8
    R2.*17
    r4 r8 r4 b8
    e8.\segno [fis16] g8 g, [\vplaintehoriz fis] e
    b'4. e,4 b'8 
    e8. [fis16] g8 g, [\vplaintehoriz fis] e
    b'4. ~ b4 b8
    e4 d8 d [\vplaintehoriz c] b
    c4. ~ c4 a8
    d4 c8 c [\vplaintehoriz b] a
    b4. \grace a4 (g4) d'8
    e [fis] g g [\vplaintehoriz fis] e
    d2. ~
    d ~
    d4. ~ d4 g8
    g, [a] b \vxmordant b8. a16 [g8]
    g4. r4 r8
    r2.
    r
    r
    r4 r8 r4 b8
    e8. [fis16] g8 g, [\vplaintehoriz fis] e
    b'4. e,4 b'8
    e8. [fis16] g8 g, [\vplaintehoriz fis] e
    b'4. ~ b4 b8
    c4 b8 b [cis] d
    cis4. \grace b4 (a4) cis8
    d4 cis8 c [dis] e
    \vxmordant dis4. \grace cis4 (b4) g'8
    g4 fes8 fis [e] fis
    e4. ~ e4 g8
    fis [g] e \vxmordant dis4 e8
    e4. ~ e4 fis8
    g4 fis8 g8. [dis16] d8
    e4. ~ e4 b8
    c4 b8 c8. [gis16] g8
    a4. \grace g4 (fis4) b8
    g [\vplaintehoriz fis] e g4 a8
    b2. ~
    b2. ~
    b4. ~ b4 e8
    e, [fis] g \vxmordant g8. fis16 [e8]
    e4. r4 r8
    r2.
    r
    r
    r4^\markup{\bold \italic Fin} r8 r4 b'8
    c4 e8 gis,4 b8
    a4. e4 e'8
    fes8. e16 [d8] \vxmordant c8. b16 [a8]
    a4. ~ a4 c8
    c4 b8 \vxmordant a4 g8
    a4. \grace g4 (fis4) b8
    g [fis] e \vplaintehoriz dis4 e8
    fis4. ~ \vxmordant fis4 b8
    g [fis] e b' [c] a
    b4. ~ b4 fis'8
    g4 g8 \vplaintehoriz e [d] e
    fis4. \grace e4 (d4) fis8
    fis8. [b,16] b8 b [ais] b
    \vxmordant ais4. ~ ais4 fis8
    cis'4 c8 c [b] c
    d4. \grace cis4 (b4) cis8
    d [e] d \vxmordant cis4 b8
    fis'2. ~
    fis ~
    fis4. ~ fis4 b,8
    b [cis] d \vxmordant d8. cis16 [b8]
    b4. r4 r8
    r2.
    r
    r
    r4 r8 r4 b8
    \bar "||"  \mark \markup \normalsize { \musicglyph  #"scripts.segno" } \break
  }
}

Blyrics = \lyricmode {
  Ve- nez sous ces feuil- la- ges,
  ve- nez, pe- tits oy- seaux;
  ve- nez pe- tits oy- seaux,
  Par vos char- mans ra- mages, __ _
  E- veil- ler les E- chos __
  E- veil- ler les E- __ chos.
  Ve- nez sous ces feuil- la- ges,
  Ve- nez pe- tits oy- seaux,
  ve- nez sous ces feuil- la- ges,
  Par vos char- mans ra- ma- ges,
  E- veil- ler les E- chos,
  E- veil- ler les E- chos.
  Ve- nez pe- tits
  oy- seaux, Par vos char- mans
  ra- ma- ges,
  E- veil- ler les E- chos __
  E- veil- ler les E- __ chos.
  Que Pro- gné re- nou- vel- le
  ses dou- lou- reux ac- cents;
  Ay- ma- ble Phi- lo- mè- le,
  ré- pon- dez à ses chants,
  ré- pon- dez à ses chants.
  Que Pro- gné re- nou- vel- le
  ses dou- lou- reux ac- cents;
  Ay- ma- ble Phi- lo- mè- le,
  ré- pon- dez à ses chants __
  ré- pon- dez à ses chants.
  Venez
}

%% FIGURED BASS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Bbassefig = \figuremode {
  s8
  s2.
  s
  \bassFigureExtendersOn
  <_>8 <_>4. <_>8
  \bassFigureExtendersOff
  <6>8
  <_+>4. <6>
  \bassFigureExtendersOn
  <_>8 <_>4. <_>4
  \bassFigureExtendersOff
  <6\\>4. s4 <6\\>8
  <6>
  \bassFigureExtendersOn
  <_>8 <_>4 <_>8
  \bassFigureExtendersOff
  <6\+>8
  s4. <5/>
  <6 4\+ 3>4
  \bassFigureExtendersOn
  <_>8
  \bassFigureExtendersOff
  <6 5>4
  \bassFigureExtendersOn
  <_>8
  \bassFigureExtendersOff
  <_+>2.
  s4. <5/>
  s <6>4 <6>8
  <7 _+>4. <4>4 <_+>8
  s4. <5/>
  s <5/>
  s <6>4 <6>8
  <7 _+>4. <4>4 <_+>8  
  \bassFigureExtendersOn
  <_>2 <_>8
  \bassFigureExtendersOff
  <_>8
  s2.
  s2.
  \bassFigureExtendersOn
  <_>8 <_>4. <_>8
  \bassFigureExtendersOff
  <6>8
  <_+>4
  \bassFigureExtendersOn
  <_>4 <_>8
  \bassFigureExtendersOff
  <_>8
  <6>4. <5/>8
  \bassFigureExtendersOn
  <_>8 <_>16
  \bassFigureExtendersOff
  <_>16
  <_>16
  \bassFigureExtendersOn
  <_>16 <_>4. <_>8
  \bassFigureExtendersOff
  <_>8
  <6>4. <5/>8
  \bassFigureExtendersOn
  <_>8 <_>16
  \bassFigureExtendersOff
  <_>16
  <_>16
  \bassFigureExtendersOn
  <_>16 <_>4. <_>8
  \bassFigureExtendersOff
  <_>8
  <6 5>8
  \bassFigureExtendersOn
  <5>8 <5>8
  \bassFigureExtendersOff
  <4>4 <3>8
  s4. <5/>
  s <5/>
  s <6>4 <6>8
  <7>4. <6 4>4 <3>8
  <_>16
  \bassFigureExtendersOn
  <_>16 <_>4. <_>8
  \bassFigureExtendersOff
  <_>8
  s2.
  s
  \bassFigureExtendersOn
  <_>8 <_>4. <_>8
  \bassFigureExtendersOff
  <6>8
  <_+>4
  \bassFigureExtendersOn
  <_>4 <_>8
  \bassFigureExtendersOff
  <_>8
  s2.
  s
  s
  <6>
  s4. <5/>
  <_+> s
  <5> <5/>
  <_+> s
  <7> <5/>
  s s4 <6>8
  <6 5>8
  \bassFigureExtendersOn
  <5>8 <5>8
  \bassFigureExtendersOff
  <_+>4.
  \bassFigureExtendersOn
  <_>4 <_>4 <_>8
  \bassFigureExtendersOff
  <5/>8
  \bassFigureExtendersOn
  <_>4 <_>8 <_>8
  \bassFigureExtendersOff
  <_>8 <6\\>
  \bassFigureExtendersOn
  <6>4 <6>4 <6>8
  \bassFigureExtendersOff
  <_>8
  <_>16
  \bassFigureExtendersOn
  <_>16 <_>8 <_>8 <_>8
  \bassFigureExtendersOff
  <_>8 <6\\>
  <6>4. <5/>
  s <7>4 <6>8
  <_+>2.
  s4. <5/>
  s <6>4 <6>8
  <7 _+>4. <6 4>4 <_+>8
  s4. <5/>
  s <5/>
  s <6>4 <6>8
  <7 _+>4. <4>4 <_+>8
  s2.
  s4. <6\\>
  <6> s
  <6 5 _-> <6 4>4 <_+>8
  s2.
  s
  s4 <7 _+>8
  \bassFigureExtendersOn
  <5/>4 <5/>8
  \bassFigureExtendersOff
  <_>16
  \bassFigureExtendersOn
  <_>16 <_>8 <_>8
  \bassFigureExtendersOff
  <6\\>4.
  \bassFigureExtendersOn
  <_+>4 <_+>4 <_+>8
  \bassFigureExtendersOff
  <_>8
  s4. <6>4 <6>8
  <_+>4. s
  \bassFigureExtendersOn
  <_>4 <_>8
  \bassFigureExtendersOff
  <7 _+>4.
  \bassFigureExtendersOn
  <_>4 <_>4 <_>8
  \bassFigureExtendersOff
  <_>8
  \bassFigureExtendersOn
  <7>4 <7>8
  \bassFigureExtendersOff
  <6 4\+ 3>4 <6\\ 5>8
  <_+>4. s
  <6> <7 _+>
  s s4 <5/>8
  s4. <6 _+>4 <6>8
  <_+>4. s
  s <5/>
  s <6>4 <6>8
  <7 _+>4. <4>4 <_+>8
  s4. <5/>
  s <5/>
  s <6>4 <6>8
  <7 _+>4. <4>4 <_+>8
  <_+>16
  \bassFigureExtendersOn
  <_+>16 <_+>8 <_+>4 <_+>8
  \bassFigureExtendersOff
  <_>8
}

Bbasse = {
  \clef bass
  \key e \minor
  \time 6/8
  \relative c, {
    \partial 8 r8
    e4. r4 r8
    e4. r4 r8
    e'8 [(dis) e] e [(d!) c]
    b4 b'8 g4 e8
    a4 g8 a4 g8
    \vxmordant fis4. e4 fis8
    g4 fis8 g4 fis8
    e4. dis4 e8
    c4 b8 a4 c8
    b4 b'8 b4.
    r8 r e dis4.
    r8 r e dis4 g,8
    a4. b
    e,4 e8^\markup{\italic Doux} dis4.
    r8 r e8 dis4.
    r8 r e8 dis4 g,8
    a4. b
    e,4 fis8 g4 fis8
    e4.\segno r4 r8
    e4. r4 r8
    e' [(dis) e] e [(d!) c]
    b4 b'8 b4 a8
    gis4 g8 g [fis e]
    a,4 a'8 a4 g8
    fis4 fis8 fis [e d]
    g,4 a8 b4 g8
    c [b a] d4 d,8
    g4 g'8 fis4.
    r8 r g fis4.
    r8 r g fis4 b,8
    c4. d
    g,4 a8 g4 fis8
    e4. r4 r8
    e4. r4 r8
    e' [(dis) e] e [(d!) c]
    b4 a8 g4 fis8
    e4. r4 r8
    e4. r4 r8
    e4. r4 r8
    g'4. e
    a gis
    a4 a,8 a4 a'8
    b4. ais
    b4 b,8 b4 e8
    a,4. b
    c4 c'8 c4 g8
    a [g a] b4 b,8
    e4 fis8 g4 dis8
    e4 dis8 e4 fis8
    gis4 fis8 gis4 e8
    a4 gis8 a4 b8
    c4. dis,
    e c
    b4 b'8 b4.
    r8 r e dis4.
    r8 r e dis4 g,8
    a4. b
    e,4 e8 dis4.
    r8 r e dis4.
    r8 r e dis4 g,8
    a4. b
    e,4^\markup{\bold \italic Fin} e'8 gis4 e8
    a4. b
    c c,
    d e
    a,2.
    r
    r8 r b8 dis4 b8
    e8 [fis g] fis4 e8
    b'4 b,8 dis4 b8
    e4 e8 \vxmordant d4 c8
    b4. ~ b4 b'8
    e,8 [fis g] a4 a,8
    d4 e8 fis4 d8
    g4 fis8 g4 e8
    fis4. fis,
    ais fis
    b ~ b4 ais8
    b4 b8 a4 g8
    fis4 fis'8 fis4.
    r8 r b ais4.
    r8 r b ais4 d,8
    e4. fis
    b,4 b8 ais4.
    r8 r b ais4.
    r8 r b ais4 d,8
    e4. fis
    b4 a8 g4 fis8
    \bar "||"  \mark \markup \normalsize { \musicglyph  #"scripts.segno" }
  }
}
