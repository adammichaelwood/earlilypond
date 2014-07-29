%%  recitatif3.ly
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


rectroissopun = {
  %\mark \markup{\italic{Récitatif}}
  \tempo "Récitatif"
  \autoBeamOff
  r4 d8 e fis8. fis16 fis8 d				| % 1
  g4 g8. g16 g4. g16 fis				| % 2
  \vxmordant fis4 fis r8 a, b cis			| % 3
  d2 ~ d4 (cis8) d					| % 4
  \vxmordant cis8. cis16 d8 e \vxmordant gis,4. a8	| % 5
  a2 r							| % 6
  r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1	| % 7-17
  \tempo "Mesuré lent"
  e'2 ~ e4. \vxmordant d16 [cis]			| % 18
  fis2 ~ fis4. b,16 [d]					| % 19
  e2 ~ e4. a,16 [cis]					| % 20
  d4. e16 [d] ~ \vxmordant d4. cis16 [d]		| % 21
  cis2 c ~						| % 22
  c4. a16 [c] b2 ~					| % 23
  b4. \vxmordant a16 [gis] c4. d16 [c]		| % 24
  b4. c8 b4. c16 [a]				| % 25
  c2 (\vxmordant b4. a16 [b])			| % 26
  a2 r4 \tempo "Récitatif" a8 b			| % 27
  \vxmordant cis4. d32 ([cis16 d32]) e4 e		| % 28
  r8 e e d \vxmordant cis4 cis8. e16			| % 29
  a,4 a8. a16 b4. cis8					| % 30
  \grace cis8 (d2) d4 r					| % 31
  r a8 b c4. cis8					| % 32
  \vxmordant fis,4 fis8 g a4 a8 b			| % 33
  b4^\tweak #'X-offset #0.5 ^\markup{\rotate #45 \fontsize #-1 \musicglyph #"scripts.stopped"}^\tweak #'X-offset #0.3 ^\markup{\fontsize #-3 \flat}
  a \afterGrace \vxmordant a2 ({g8)}			| % 34
  g4 r r2						| % 35
  r4 e'8 e \vxmordant d4. cis16 ([b])			| % 36
  cis4 cis8 cis \vxmordant cis4. (b16 [cis])		| % 37
  d4 d8 d \vxmordant c4. b16 ([a])			| % 38
  b2 cis4 d						| % 39
  \vxmordant cis2 cis4 r				| % 40
  a4 a8 fis g4. a8					| % 41
  \grace a8 (b2) r					| % 42
  b4 b8 gis a4. b8					| % 43
  cis4 cis e2						| % 44
  a, r2							| % 45
  \tempo "Un peu vivement"
  fis'4 fis8 fis \vxmordant d4. d16 fis		| % 46
  \vxmordant b,4. b8 b4 r				| % 47
  g' g8 g \vxmordant e4. e16 g				| % 48
  \vxmordant cis,4. cis8 cis4 r			| % 49
  d d8 fis b,4. b16 e					| % 50
  \vxmordant cis4. d8 d4 r				| % 51
  fis fis8 a d,4. d16 g					| % 52
  \vxmordant e4. a8 \vxmordant fis4 r			| % 53
}

rectroislyrun = \lyricmode {
  De ex- cel- so mi- sit ig- nem in os- si- bus me- is:
  et e- ru- di- __ vit me, et e- ru- di- vit me.
  \markup\bold Nun __ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Vi- gi- la- vit __ ju- gum in- i- qui- ta- tum
  me- a- rum in ma- nu e- jus:
  con- vo- lu- \markup{\concat{t \char ##x00E6 }}
  sunt, et im- po- si- 
  \markup{\concat{t \char ##x00E6 }}
  col- lo me- o:
  in- fir- ma- ta __ est vir- tus me- __ a:
  in- fir- ma- ta __ est vir- tus me- a:
  de- dit me Do- mi- nus,
  de- dit me Do- mi- nus in ma- nu
  de qua non po- te- ro sur- ge- re.
  de qua non po- te- ro sur- ge- re.
  de qua non po- te- ro sur- ge- re.
  de qua non po- te- ro sur- ge- re.
}

rectroissopdeux = {
  \autoBeamOff
  r1 | r1 | r1 | r1 | r1			| % 1-5
  r2 r8 cis' cis fis				| % 6
  \vxmordant dis4 d a4. g16 fis		| % 7
  g2 g4 g'					| % 8
  \vxmordant e e \vxmordant cis4. cis8		| % 9
  fis4 fis fis, fis8 fis			| % 10
  b2 d4. fis,8					| % 11
  \grace fis8 (gis4) g b b8 b			| % 12
  e2 g4. gis,8					| % 13
  \grace g8 (ais4) a r4 fis'8 g		| % 14
  \vxmordant e4 e8. d16 cis4 ais8 b		| % 15
  d2 (\vxmordant cis)				| % 16
  b d ~						| % 17
  d4. \vxmordant cis16 [b] cis2 ~		| % 18
  cis4. fis,16 [ais] b2 ~			| % 19
  b4. e,16 [gis] a2 ~				| % 20
  a4. s32 gis [fis gis] ~ \vxmordant gis4. fis16 [gis]	| % 21
  a2 r						| % 22
  fis ~ fis4. g16 [a]				| % 23
  \vxmordant gis4. fis16 [e] a2 ~		| % 24
  a1 ~						| % 25
  a2 (\vxmordant gis4. fis16 [gis])		| % 26
  a2 s						| % 27
  s1 | s1 | s1 | s1 | s1 | s1 | s1		| % 28-34
  r4 b8 b \vxmordant a4. g16 ([fis])		| % 35
  g4 g8 g \vxmordant gis4. (fis16 [gis])	| % 36
  a4 a8 a g4. fis16 ([e])			| % 37
  fis4 fis8 fis g4. a8				| % 38
  d,2 e4 fis					| % 39
  \vxmordant e2 e4 r				| % 40
  fis fis8 d e4. fis8				| % 41
  \grace fis8 (g2) s				| % 42
  gis4 g8 e fis4. gis8				| % 43
  a4 e \afterGrace g2 ({fis8)}			| % 44
  \vxmordant fis2 r				| % 45
  a4 a8 a \vxmordant fis4. fis16 a		| % 46
  d,4. d8 d4 r					| % 47
  b'4 b8 b \vxmordant gis4. g16 b		| % 48
  \vxmordant e,4. e8 e4 r			| % 49
  fis fis8 a d,4. d16 g				| % 50
  \vxmordant e4. a8 \vxmordant fis4 r		| % 51
  d'4 d8 fis b,4. b16 e				| % 52
  \vxmordant cis4. d8 d4 r			| % 53
  
}

rectroislyrdeux = \lyricmode {
  Ex- pan- dit re- te pe- di- bus me- is:
  con- ver- tit me ret- ror- sum,
  po- su- it me de- so- la- tam,
  po- su- it me de- so- la- tam,
  to- ta di- e
  \markup{\concat{m \char ##x0153 -}} ro- re
  con- fec- __ tam
  \markup\bold Nun __ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  in- fir- ma- ta __ est vir- tus me- __ a:
  in- fir- ma- ta __ est in- fir- ma- ta
  est vir- tus me- a:
  de- dit me Do- mi- nus,
  de- dit me Do- mi- nus in ma- nu
  de qua non po- te- ro sur- ge- re.
  de qua non po- te- ro sur- ge- re.
  de qua non po- te- ro sur- ge- re.
  de qua non po- te- ro sur- ge- re.
}

rectroisfig = \figuremode {
  s1				| % 1
  <2>2 <5/>			| % 2
  s <6>				| % 3
  <7> <3+ 7>			| % 4
  s4 <6>8 <7 2 5>
  \bassFigureExtendersOn
  <_ 3+>4 <7 3+>
  \bassFigureExtendersOff	| % 5
  <6>1				| % 6
  <4/>2 <5/>			| % 7
  s1				| % 8
  <6 5>				| % 9
  <4/>2 <6>			| % 10
  \bassFigureExtendersOn
  <6>4 <6>4 s2			| % 11
  \bassFigureExtendersOff
  <4/>1				| % 12
  \bassFigureExtendersOn
  <8 5/>2 <8 5+>		| % 13
  \bassFigureExtendersOff
  <7 2 5+> <6>			| % 14
  <6 4/> <4/>4 <7 5>		| % 15
  <6 4>2 <3+>			| % 16
  s1				| % 17
  <5/>				| % 18
  \bassFigureExtendersOn
  <7 5>4 <7 5+>4 <6>2		| % 19
  \bassFigureExtendersOff
  <7 5+>2 <6>			| % 20
  <7> <6+>			| % 21
  s <3->			| % 22
  \bassFigureExtendersOn
  <7/ 5/>2 <6 5/>		| % 23
  \bassFigureExtendersOff
  <4> <6>			| % 24
  <6 4/> <6 5 3->		| % 25
  \bassFigureExtendersOn
  <6- 4> <_ 3+>4 <7 3+>		| % 26
  \bassFigureExtendersOff
  s1 | s1 | s1			| % 27-29
  s2 <2>4 <4/>			| % 30
  <6>1				| % 31
  <5/>1				| % 32
  <7->1				| % 33
  \bassFigureExtendersOn
  s2 <_ 3>4 <7- 3>		| % 34
  \bassFigureExtendersOff
  s <6> <5/>2			| % 35
  s <7 3+>			| % 36
  s <3 7>			| % 37
  s <6->4 <5/>4			| % 38
  s2 <6>			| % 39
  s1				| % 40
  <4/>2 <6 4>4 <6 4 3->		| % 41
  s1				| % 42
  <3+>2 <6 4>4 <6+>		| % 43
  s2 <5/>			| % 44
  s1				| % 45
  s1 | s | s | s		| % 46-49
  <6>				| % 50
  s				| % 51
  s4. <6>8 s4. <6>8		| % 52
  s1				| % 53
}

rectroisbass = {
  d'2 d' ~			| % 1
  d cis				| % 2
  d cis				| % 3
  b e,				| % 4
  a4 fis8 [d] e4 (e,)		| % 5
  a2 a'~			| % 6
  a dis,			| % 7
  e1 ~				| % 8
  e ~				| % 9
  e2 dis ~			| % 10
  dis des ~			| % 11
  des1				| % 12
  cis				| % 13
  d				| % 14
  g2 e				| % 15
  fis fis,			| % 16
  b b'				| % 17
  gis a				| % 18
  d,1				| % 19
  cis				| % 20
  b				| % 21
  a2 a'				| % 22
  dis,1				| % 23
  des2 c			| % 24
  f d				| % 25
  e e,				| % 26
  a a' ~			| % 27
  a1 ~				| % 28
  a1 ~				| % 29
  a2. g4			| % 30
  fis1 ~			| % 31
  fis				| % 32
  d				| % 33
  g4 (c,) d2			| % 34
  g,4 g' dis2			| % 35
  e e,				| % 36
  a a'				| % 37
  d, e4 fis			| % 38
  g (fis) e d			| % 39
  a'2 (a,4 b)			| % 40
  c2 b4 a			| % 41
  g (d' g fis)			| % 42
  e (d) cis b			| % 43
  a a' cis,2			| % 44
  d4 (cis8 [b] a [g fis e])	| % 45
  d2 d'				| % 46
  g8 [fis g a b a g fis]	| % 47
  e2 e,				| % 48
  a4  a'8 [g] a [b a g]		| % 49
  fis4 (d) g4. (e8)		| % 50
  a4 a, d r			| % 51
  d'4 d8 [fis,] g4. g16 ([e])	| % 52
  a4 a, d r			| % 53
}
