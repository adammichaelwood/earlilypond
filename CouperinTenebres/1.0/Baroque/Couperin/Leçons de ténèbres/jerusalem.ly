%%  jerusalem.ly
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

jerusopun = {
  \tempo "Lentement"
  \autoBeamOff
  r1 | r1						| % 1-2
  r2 r4 r8 a,						| % 3
  e'4. (s32 fis [e fis]) ~ \vxmordant fis4. e8		| % 4
  d4. d8 g2 ~						| % 5
  g4. s32 fis [e fis] ~ \vxmordant fis4. g8		| % 6
  \vxmordant e4 e a4. g8				| % 7
  fis4 e d4. cis8					| % 8
  \vxmordant b2 e4 fis					| % 9
  cis2 (\vxmordant b)					| % 10
  a r							| % 11
  r4 r8 cis cis4 (d8.) e16				| % 12
  \vxmordant dis4 b e2 ~				| % 13
  e4. d8 d2 ~						| % 14
  d cis4. d8						| % 15
  \vxmordant b4 b8 r16 b b4 (cis8.) d16		| % 16
  \vxmordant cis4 a d2 ~				| % 17
  d4. ces8 cis2 ~					| % 18
  cis4 cis \vxmordant b4. a8				| % 19
  g4 b \vxmordant a4. g8				| % 20
  \vxmordant fis2 g4. g8				| % 21
  g2 (\vxmordant fis)					| % 22
  g4 d' g4. fis8					| % 23
  e4 fis \vxmordant cis4. d8				| % 24
  \grace d8 (e4) e a4. g8				| % 25
  fis4 e g4. fis8					| % 26
  e4 d \vxmordant cis4. b8				| % 27
  a2 d4. (cis16) d					| % 28
  d2 (\vxmordant cis)					| % 29
  d4 ces b4. a8						| % 30
  g4 b e4. g8						| % 31
  \vxmordant cis,2 fis4. s32 g [fis e]			| % 32
  fis2 (\vxmordant e)					| % 33
  d1							| % 34
}

jerulyrun = \lyricmode {
  Je- ru- __ sa- lem, Je- ru- __ _ sa- lem
  con- ver- te- re ad Do- mi- \markup{\concat{n \char ##x00FA }}
  De- um tu- __ um con- ver- __ te- re ad Do- __ mi- num
  De- um yu- um con- ver- __ te- re ad Do- __ mi- num,
  con- ver- te- re ad Do- mi- num De- um tu- __ um
  con- ver- te- re ad Do- mi- num,
  con- ver- te- re, con- ver- te- re
  ad Do- mi- num De- __ um tu- __ um
  con- ver- te- re ad Do- mi- num De- um __ tu- __ um.
}

jerusopdeux = {
  \autoBeamOff
  r2 r4 r8 fis,						| % 1
  b4. (s32 cis [b cis] ~ \vxmordant cis4.) b8		| % 2
  a4. a8 d2 ~						| % 3
  d4. (e16 [d] cis4. d16 [cis]) ~ 			| % 4
  \vxmordant cis4. b8 b4 r8 b				| % 5
  e4. s32 d [cis d] ~ \vxmordant d4. e8		| % 6
  \vxmordant cis4 r r a					| % 7
  d4. cis8 b4 a						| % 8
  \vxmordant gis g8 g a4. a8				| % 9
  a2 (\vxmordant gis)					| % 10
  a r2							| % 11
  r1 | r1						| % 12-13
  r4 r8 fis fis4 (g8.) a16				| % 14
  \vxmordant gis4 e a2 ~				| % 15
  a4. g8 g2 ~						| % 16
  g fis4. g8						| % 17
  \vxmordant e4 e8. e'16 e4 (fis8.) g16		| % 18
  \vxmordant fis4 d g4. fis8				| % 19
  e4 d \vxmordant ces4. b8				| % 20
  \vxmordant a2 b4. ces8				| % 21
  \vxmordant a4 a8. a16 a4 (b8.) ces16			| % 22
  \vxmordant b4 b e4. d8				| % 23
  \vxmordant cis4 d e4. fis8				| % 24
  \vxmordant cis4 r r2					| % 25
  r1 | r1 | r1						| % 26-28
  r4 e a4. g8						| % 29
  fis4 e g4. fis8					| % 30
  e4 d \vxmordant cis4. b8				| % 31
  a4. s32 cis ([b cis] d2) ~				| % 32
  d4. s32 cis ([b cis]) \vxmordant cis4. (b16 [cis])	| % 33
  d1							| % 34
}

jerulyrdeux = \lyricmode {
  Je- ru- __ sa- lem, Je- ru- __ sa- lem,
  Je- ru- __ _ sa- lem,
  con- ver- te- re ad Do- mi-
  \markup{\concat{n \char ##x00FA }}
  De- \markup{\concat{\char ##x00FA -}} tu- um.
  con- ver- te- re ad Do- __ mi- num
  De- um tu- um con- ver- __ te- re
  con- ver- te- re ad Do- mi- num De- um
  tu- \markup{\char ##x00FA }
  con- ver- __ te- re, con- ver- te- re
  ad Do- mi- num,
  con- ver- te- re, con- ver- te- re
  ad Do- mi- num De- __ um __ tu- __ um.
}

jerufig = \figuremode {
  s1					| % 1
  <7>2 <6 4/ 3>				| % 2
  <7> <6>				| % 3
  <6 5> <6>				| % 4
  <2 5> <6>				| % 5
  <5/> s				| % 6
  s <6>4 <6>				| % 7
  s2 <6 5>				| % 8
  <4> <6>4 <6 5>4			| % 9
  <6 4>2 <3+>				| % 10
  s1					| % 11
  <5>2 <7>				| % 12
  <3+> <6>				| % 13
  <6 5 3->
  \bassFigureExtendersOn
  <3- _>4 <3- 7>			| % 14
  \bassFigureExtendersOff
  <5+ 2>2 <6>				| % 15
  <6 5>
  \bassFigureExtendersOn
  <_ 3->4 <7 3->			| % 16
  \bassFigureExtendersOff
  <2 7>2 <6>				| % 17
  <6 5>
  \bassFigureExtendersOn
  <_ 3->4 <7 3->			| % 18
  \bassFigureExtendersOff
  <5 2->2 <6>				| % 19
  s <6 5>				| % 20
  <4/> <6>				| % 21
  <4> \bassFigureExtendersOn
  <_ 3>4 <7- 3>				| % 22
  \bassFigureExtendersOff
  s1					| % 23
  <3 5>4 <4 6> <3 5> <4 6>		| % 24
  <4/>2 <6>4 <6>			| % 25
  s <6> <6> <6>				| % 26
  <6> <6> <3 4 6>2			| % 27
  <3 2 7> <6>				| % 28
  <6 5>4 <6 4 3>
  \bassFigureExtendersOn
  <_ 3> <7 3>				| % 29
  \bassFigureExtendersOff
  <3 8> <2 7-> <8 3> <7 2>		| % 30
  <6> <5> <4/> <6 3>			| % 31
  <4/>2 <6>				| % 32
  <6 4> \bassFigureExtendersOn
  <_ 3>4 <7 3>				| % 33
  \bassFigureExtendersOff
  s1					| % 34
}

jerubass = {
  d4 e fis d			| % 1
  g (fis) g (e)			| % 2
  fis (e) fis (d)		| % 3
  g4 (e) a (fis)		| % 4
  b (a) b (g)			| % 5
  cis (a) d d,			| % 6
  a' (g) fis e			| % 7
  d1 ~				| % 8
  d2 cis4 d			| % 9
  e2 e,				| % 10
  a4 (e' a g)			| % 11
  fis2 fis,			| % 12
  b4 (b') g (e)			| % 13
  a (fis) b (b,)		| % 14
  cis (b) cis (a)		| % 15
  d (b) e (e,)			| % 16
  fis (e) fis (d)		| % 17
  g (e) a (a')			| % 18
  b (a) b (g)			| % 19
  ces2 ces, ~			| % 20
  ces b4 (g)			| % 21
  d' (ces) d (d,)		| % 22
  g (g'8 [fis]) e2		| % 23
  a1				| % 24
  g2 fis4 e			| % 25
  d cis b a			| % 26
  g fis e (g)			| % 27
  fis (fis'8 [e]) fis4 (d)	| % 28
  g b a (a,)			| % 29
  d2 g, ~			| % 30
  g1 ~				| % 31
  g2 fis4 g			| % 32
  a1				| % 33
  d,				| % 34
}
