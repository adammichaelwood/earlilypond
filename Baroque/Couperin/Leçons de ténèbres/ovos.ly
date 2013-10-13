%%  ovos.ly
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

ovossopun = {
  \key a \minor
  \autoBeamOff
  r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1	| % 1-12
  r4 r8 c f2 ~				| % 13
  f4. f8 f2				| % 14
  r2 a,4. bes8				| % 15
  \vxmordant g2 g			| % 16
  r4 r8 d'8 g2 ~			| % 17
  g4. g8 g2				| % 18
  r2 bes,4. c8				| % 19
  \vxmordant a4 a r a8 b		| % 20
  \afterGrace c2 ({d8)} \vxmordant b2	| % 21
  b4 b cis4. d8				| % 22
  \vxmordant cis2 c4 r			| % 23
  \tempo "Un peu plus animé"
  e4. e8 e2				| % 24
  r8 e e f g4 \grace f8 (e4)		| % 25
  f4 f8 e d4 e8 f			| % 26
  g4. g8 g4 g				| % 27
  \vxmordant e g c, c8. c16		| % 28
  d4. e8 \vxmordant d2			| % 29
  c g4. a8				| % 30
  bes8 b b c d4 e			| % 31
  f8 d d e f4 g				| % 32
  \vxmordant e4 e8 e f4 f8 f		| % 33
  \vxmordant d4. d8 d8. d16 e8 f	| % 34
  g4 g8. f16 e8 [f] e[d]		| % 35
  \vxmordant cis4 c8. a16 d4 d		| % 36
  d \vxmordant c8. b16 e4 e		| % 37
  e \vxmordant d8. cis16 f4 f		| % 38
  f \vxmordant e8. d16 g4 g		| % 39
  g g r r8 \tempo "Lentement" b,8	| % 40
  cis4. (\vxmordant b16 [a]) d2	| % 41
  d (\vxmordant cis)			| % 42
  d1					| % 43
}

ovoslyrun = \lyricmode {
  at- ten- __ di- te et vi- de- te
  at- ten- __ di- te et vi- de- te
  si est do- lor si- cut do- lor me- us
  quo- ni- am vin- de- mi- a- vit me
  ut lo- cu- tus est Do- mi- nus in di- e
  i- \markup{\concat{r \char ##x00E6 }}
  fu- ro- ris su- i
  quo- ni- am vin- de- mi- a- vit me
  vin- de- mi- a- vit me
  ut lo- cu- tus est Do- mi- nus in di- e
  i- \markup{\concat{r \char ##x00E6 }}
  fu- ro- ris su- i in di- e
  i- \markup{\concat{r \char ##x00E6 }}
  fu- ro- ris su- i in di- e
  i- \markup{\concat{r \char ##x00E6 }}
  fu- ro- ris su- i
  fu- ro- __ ris su- __ i
}

ovossopdeux = {
  \key a \minor
  \autoBeamOff
  r4 a2 d4				| % 1
  \grace c8 (bes2) b4 b8 b		| % 2
  \vxmordant g2 g4 \grace fis8 (e4)	| % 3
  \grace e8 (fis2) fis4 r8 a8		| % 4
  f'4. f8 f2				| % 5
  r2 b,4. d8				| % 6
  \vxmordant gis,2 g			| % 7
  r2 e'4 \acciaccatura {e8 [f]} g4	| % 8
  \grace g8 (f2) f			| % 9
  d4 \acciaccatura {d8 [e]} f4 e \grace d8 (c4)	| % 10
  c2 (\vxmordant b)			| % 11
  a r					| % 12
  r4 r8 f a2 ~				| % 13
  a4. a8 a2				| % 14
  r f4. g8				| % 15
  \vxmordant e2 e			| % 16
  r4 r8 g bes2 ~			| % 17
  bes4. b8 b2				| % 18
  r2 g4. \grace f8 (e8)			| % 19
  f4 f r fis8 g				| % 20
  a2 d,					| % 21
  d4 d e4. f8				| % 22
  \vxmordant e2 e4 r			| % 23
  cis'4. c8 c2				| % 24
  r8 c8 c d e4 \grace d8 (cis4)	| % 25
  d4 d8 c b4 c8 d			| % 26
  e4. e8 e4 e				| % 27
  c g a a8. a16				| % 28
  b4. c8 c4 (\vxmordant b)		| % 29
  c2 e,4. fis8				| % 30
  g g g a bes4 a16 ([g8 a16])		| % 31
  a8 f f g a4 b				| % 32
  c g8 g a4 a8 a			| % 33
  \vxmordant f4. f8 f8. f16 g8 a	| % 34
  bes4 b8. a16 g8 [a] g [f]		| % 35
  e4 e8 r r2				| % 36
  r4 r8 d8 g4 g				| % 37
  g \vxmordant f8. e16 a4 a		| % 38
  a \vxmordant g8. f16 bes4 b		| % 39
  b b r4 r8 f8				| % 40
  e4. (\vxmordant d16 [cis]) f2	| % 41
  f (\vxmordant e)			| % 42
  d1					| % 43
}

ovoslyrdeux = \lyricmode {
  O vos om- nes qui tran- si- tis per vi- am
  at- ten- di- te et vi- de- te
  si est do- lor si- cut do- lor me- __ us
  at- ten- __ di- te et vi- de- te
  at- ten- __ di- te et vi- de- te
  si est do- lor si- cut do- lor me- us
  quo- ni- am vin- de- mi- a- vit me
  ut lo- cu- tus est Do- mi- nus in di- e
  i- \markup{\concat{r \char ##x00E6 }}
  fu- ro- ris su- i
  quo- ni- am vin- de- mi- a- vit me
  vin- de- mi- a- vit me
  ut lo- cu- tus est Do- mi- nus in di- e
  i- \markup{\concat{r \char ##x00E6 }}
  fu- ro- ris su- i
  in di- e i- \markup{\concat{r \char ##x00E6 }}
  fu- ro- ris su- i fu- ro- ris su- i
  fu- ro- __ ris su- __ i
}

ovosfig = \figuremode {
  s1				| % 1
  <6- 4>1			| % 2
  <2>2 <5/>2				| % 3
  s1					| % 4
  s1					| % 5
  s2 <6>2				| % 6
  <4>1					| % 7
  <6>2 <5/>2				| % 8
  s1					| % 9
  <7/ 5/>2 <6>2				| % 10
  <6 4>2 <3+>2				| % 11
  <3+>1					| % 12
  <5>1					| % 13
  s1					| % 14
  s1					| % 15
  s1					| % 16
  <3->1					| % 17
  s1					| % 18
  s1					| % 19
  s2 <3+>4 <6 4>4			| % 20
  <5/>1					| % 21
  <4/>2 <6+>2				| % 22
  <3+>1					| % 23
  s1					| % 24
  s8 <3+>4 <6>8 <7 5/>4	 <7 3+>4	| % 25
  s2. <6 4>8 <4/>8			| % 26
  <6>1					| % 27
  s1					| % 28
  <6>2 <4>4 <3>4			| % 29
  s2 <4/>4 <6+>4			| % 30
  <3->2. <6>4				| % 31
  s2 <3>4 <6 4>4			| % 32
  s1					| % 33
  s1					| % 34
  <8 5/>1				| % 35
  <3+>2 <6>2				| % 36
  <7>4 <6 4>4 <5>2			| % 37
  <3 7>4 <4 6>8 <4/>8 <6>2		| % 38
  <7>4 <6 4/ 3>8 <6 4>8 <3->2		| % 39
  <7 5/>2 s4. <6!>8			| % 40
  <4/>2 <6>2				| % 41
  <4 6>2 \bassFigureExtendersOn
  <_ 3+>4 <7 3+>4			| % 42
  \bassFigureExtendersOff
  s1					| % 43
}

ovosbass = {
    \key a \minor
    d'1 ~				| % 1
    d ~					| % 2
    d2 cis				| % 3
    d d,4 r				| % 4
    r2 r4 d'				| % 5
    d'1 ~				| % 6
    d					| % 7
    cis					| % 8
    d					| % 9
    gis,2 c,4 (d)			| % 10
    e2 e,				| % 11
    a (a'4 g)				| % 12
    f1 ~				| % 13
    f					| % 14
    f,					| % 15
    c					| % 16
    g'' ~				| % 17
    g					| % 18
    g,					| % 19
    d2 d'				| % 20
    fis, g				| % 21
    fes e4 d				| % 22
    a'1	(				| % 23
    a')					| % 24
    r8 a [g fis] e4 a			| % 25
    d,2 g4. f8				| % 26
    e ([f e d]) c2 ~			| % 27
    c8 [d e c] f [g f e]		| % 28
    d4 c g' g,				| % 29
    c2 bes4 a				| % 30
    g2 g'				| % 31
    d d'				| % 32
    c f,				| % 33
    bes ~ bes8 ([a g f])		| % 34
    e ([d e f g f g e])			| % 35
    a ([bes a g]) f ([e f d])		| % 36
    g [(a) g f] e ([f g e])		| % 37
    a [(bes) a g] f ([g a f])		| % 38
    bes [(c) bes a] g ([a bes g])	| % 39
    cis2 r4 r8 d			| % 40
    g,2 f4 (d)				| % 41
    a'2 a,				| % 42
    d1					| % 43
}
