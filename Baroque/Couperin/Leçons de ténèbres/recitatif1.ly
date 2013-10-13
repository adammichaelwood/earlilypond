%%  recitatif1.ly
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

recunsopun = {
  %\mark \markup{\italic{Récitatif}}
  \tempo "Récitatif"
  \autoBeamOff
  r4 fis,8 g a a b cis				| % 1
  d2 d4. d8					| % 2
  \vxmordant b8. b16 b4 b8 b cis d		| % 3
  e2. (\vxmordant d8) cis16 d			| % 4 
  \vxmordant cis4 cis8 r8 r2			| % 5
  r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1	| % 6-13
  r2 e						| % 14
  e4 cis8 d e4 e8. e16				| % 15
  a,4 a fis'4. fis8				| % 16
  \vxmordant e4 e8 fis \afterGrace \vxmordant d2 ({cis8)}	| % 17
  \vxmordant cis2 r4 cis  			| % 18
  d4 d8. d16 e4. fis8  				| % 19
  \grace fis8 (g2) g4 fis 			| % 20
  \grace fis8 (e4) e e4. g8  			| % 21
  \grace g8 (cis,4.) cis8 d2  			| % 22
  d2 (\vxmordant cis)  				| % 23
  b r  						| % 24
  r d ~ 	 				| % 25
  d4 \vxmordant cis8 [b] cis4 d8 [e]  		| % 26
  fis1 ~  					| % 27
  fis4 \vxmordant e8 [d] e4 fis8 [g]  		| % 28
  a2. \vxmordant g8 [fis]   			| % 29
  g2. \vxmordant fis8 [e]  			| % 30
  fis2. \vxmordant e8 [d]			| % 31
  e2 ~ e4. fis8					| % 32
  e2. fis8 [e]					| % 33
  fis2 (\vxmordant e4. d16 [e])		| % 34
  d1  						| % 35
  
}

recunlyrun = \lyricmode {
  Ma- num su- am mi- sit hos- tis ad
  om- ni- a de- si- de- ra- bi- __ li- a e- jus
  qui- a vi- dit gen- tes in- gres- sas
  sanc- tu- a- ri- um su- um
  de qui- bus
  \markup{\concat{pr \char ##x0153 -}} ce- pe- ras
  ne in- tra- rent in Ec- cle- si- am tu- __ am
  \markup\bold Caph __ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
}

recunsopdeux = {
  \autoBeamOff
  r1 | r1 | r1 | r1					| % 1-4
  r4 r8 a'16 a e'8 e fis8. g16				| % 5
  \vxmordant fis2 fis4. fis8 				| % 6
  \grace e8 (d4.) e16 [d] (\vxmordant d4.) cis8	| % 7
  \vxmordant b2 e8 e e b				| % 8
  ces4. b16 ces\grace b8 (a2)				| % 9
  \vxmordant gis4 r8 b d4 (\vxmordant ces8) b		| % 10
  \grace b8 (ces2) cis8 cis d e			| % 11
  fes4. fis8 b,4. (ces16 [a])				| % 12
  ces2 (\vxmordant b)					| % 13
  a2 cis  						| % 14
  cis4 a8 a g4 g8. a16  				| % 15
  \vxmordant fis4 fis d'4. d8  			| % 16
  \vxmordant cis4 cis8 d \grace cis8 (b2)  		| % 17
  \vxmordant ais2 r4 a4  				| % 18
  b4 b8. b16 cis4. dis8  				| % 19
  \grace d8 (e2) e4 d  					| % 20
  \grace d8 (cis4) cis cis4. e8  			| % 21
  \grace e8 (ais,4.) a8 b2  				| % 22
  b (\vxmordant ais)  					| % 23
  b r  							| % 24
  r1  							| % 25
  r2 e ~  						| % 26
  e4 \vxmordant d8 [cis] d4 e8 [fis]  			| % 27
  g1 ~   						| % 28
  g4 \vxmordant fis8 [e] fis2 ~  			| % 29
  fis4 \vxmordant e8 [d] e2 ~  			| % 30
  e4 \vxmordant d8 [cis] d2 ~				| % 31
  d4. e8 d2 ~   					| % 32
  d4. e8 d2 ~  						| % 33
  d4. (e16 [d] \vxmordant cis4. b16 [cis])  		| % 34
  d1  							| % 35
}

recunlyrdeux = \lyricmode {
  Ma- num su- am mi- sit hos- tis ad om- __ _ ni- a
  de- si- de- ra- bi- li- a e- jus ad om- __ ni- a
  de- si- de- ra- bi- li- a e- __ jus
  qui- a vi- dit gen- tes
  in- gres- sas sanc- tu- a- ri- um su- um
  de qui- bus
  \markup{\concat{pr \char ##x0153 -}} ce- pe- ras
  ne in- tra- rent in Ec- cle- si- am tu- am
  \markup\bold Caph __ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
}

recunfig = \figuremode {
  s2 <6>2			| % 1
  <7>4 s2.			| % 2
  <3+>1				| % 3
  <6>2 <5/>2			| % 4
  s2 <6>4 <5/>4			| % 5
  s1				| % 6
  s2 <5/>2			| % 7
  <3+>2 <5/>2			| % 8
  <3->2 <7>4 <6>4		| % 9
  <3+>2 <5/>2			| % 10
  <3->2 <5>4 <4/>8 <6+>8	| % 11
  <3->2 <5/>2			| % 12
  \bassFigureExtendersOn
  <6- 4>2 <_ 3+>4 <7 3+>4	| % 13
  \bassFigureExtendersOff
  s1  				| % 14
  s2 <5/>2  			| % 15
  s1  				| % 16
  <5/>2 s2  			| % 17
  <3+>4 s2.  			| % 18
  s2 <6 4/>4 <3 4 6+>4  	| % 19
  s2 <3 8>4 <2 7>4  		| % 20
  <6 5>1  			| % 21
  <4/>2 <6>2  			| % 22
  s1 | s1   			| % 23-24
  <6>1  			| % 25
  <6 5>1  			| % 26
  <8 7>1   			| % 27
  <8 7>2 <5/ 8>2  		| % 28
  <8 7>1   			| % 29
  <6 5>2 <5/ 8>2  		| % 30
  <6 5>1  			| % 31
  <6 5>2 <5/>2  		| % 32
  <5 4>2 <6 4 3>4 <6 5>4  	| % 33
  <6 4>2 \bassFigureExtendersOn
  <_ 3>4 <7 3>4  		| % 34
  \bassFigureExtendersOff
  s1   				| % 35
}

recunbass = {
  d'2 cis		| % 1
  b4 (cis d b)		| % 2
  e2 (d)		| % 3
  cis gis		| % 4
  a cis			| % 5
  d4 (e d cis)		| % 6
  b (a) gis a		| % 7
  e' (fis) gis (e)	| % 8
  a (gis) fes2		| % 9
  e gis,		| % 10
  a4 a'8 [g] fes4. e8	| % 11
  d2 dis		| % 12
  e e,			| % 13
  a1 ~ 			| % 14
  a4 a' cis,2  		| % 15
  d d'   		| % 16
  ais b4 b,  		| % 17
  fis' (gis ais fis)  	| % 18
  b4. (a8) g4 fis   	| % 19
  e1 ~   		| % 20
  e1 ~   		| % 21
  e2 d4 (b)  		| % 22
  fis'2 fis,  		| % 23
  b4 (b' a g)  		| % 24
  fis (e fis d)  	| % 25
  g (e) a (g)  		| % 26
  fis (g8 [a]) b4 (a)	| % 27
  g (a8 [b]) cis4 (b)	| % 28
  a (b8 [cis]) d4 (fis)	| % 29
  b, (d) cis (e)	| % 30
  a, (cis) b (d)  	| % 31
  g,2 gis  		| % 32
  a b4 g  		| % 33
  a2 a,  		| % 34
  d,1  			| % 35
}
