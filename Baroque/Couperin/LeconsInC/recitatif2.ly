%%  recitatif2.ly
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

recdeuxsopun = {
  %\mark \markup{\italic{Récitatif}}
  %\tempo "Récitatif"
  \autoBeamOff
  r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1		| % 1-10
  r4 gis,2 g4  							| % 11
  r4 e8 e a4. b8  						| % 12
  \grace b8 (cis4) cis8 e a,4 (\vxmordant g8 [fis16]) g16	| % 13
  \vxmordant fis4 d'2 d4  					| % 14
  r2 a4 b  							| % 15
  c4. c8 c2  							| % 16
  cis4 c8 c \vxmordant b4 b8 a  				| % 17
  b2 (\vxmordant a)  						| % 18
  g4 r r2  							| % 19
  r4 b8 cis d4 (e8.) fis16  					| % 20
  \vxmordant cis2 cis4 cis8 cis  				| % 21
  d4 e8 fis g4 (\vxmordant fis8. [e16])  			| % 22
  e2 r2  							| % 23
  r4 r8 d8 d2 ~  						| % 24
  d4 e8 [d] e2 ~  						| % 25
  e4 fis8 [e] fis2 ~  						| % 26
  fis4 g8 [fis] g2 ~  						| % 27
  g4 \vxmordant fis8 [e] fis2 					| % 28
  fis8. [g16 fis e fis d] e2 ~  					| % 29
  e4. fis16 [e ~] \vxmordant e4. d16 [e]  			| % 30
  d1  								| % 31
}

recdeuxlyrun = \lyricmode {
  Vi- de vi- de Do- min- ne et con- si- __ de- ra:
  vi- de et con- si- de- ra:
  quo- ni- am fac- ta sum vi- __ lis
  et con- si- __ de- ra:
  quo- ni- am fac- ta sum vi- __ lis
  \markup\bold La- \markup\bold med __ _ _ _ _ _ _ _ _ _ _ _ _ _
}

recdeuxsopdeux = {
  \autoBeamOff
  \tempo "Récitatif"
  r2 fis,4 fis 					| % 1
  fis4. fis16 b \vxmordant ais4 ais  		| % 2
  aes4. (gis8) \vxmordant g2  			| % 3
  r4 ges g fis  				| % 4
  \vxmordant fis fis r4 r8 d'  		| % 5
  \vxmordant dis4 d d4. (\vxmordant cis16) dis	| % 6
  e4 e \vxmordant fis4. e16 fis  		| % 7
  \grace fis8 (g4) g r b, ~   			| % 8
  b8. b16 a8 g \vxmordant fis4. g8  		| % 9
  \vxmordant e4. e8 e4 r			| % 10
  r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1	| % 11-18
  r4 g'8 g \vxmordant e4. e8			| % 19
  e4 r r2					| % 20
  r2 a,4 a8 a					| % 21
  b4 cis8 d e4 (\vxmordant d8. [cis16])	| % 22
  cis2 r4 r8 a  				| % 23
  a2. b8[a]  					| % 24
  b2. cis8[b]  					| % 25
  cis2. d8[cis]  				| % 26
  d2. e8[b]  					| % 27
  \vxmordant cis8 [a b cis] d2 ~  		| % 28
  d ~ d8. [e16 d cis d b]  			| % 29
  cis4. d16[cis ~] \vxmordant cis4. b16 [cis]	| % 30
  d1  						| % 31
}

recdeuxlyrdeux = \lyricmode {
  Om- nis po- pu- lus e- jus ge- __ mens
  et \markup{\concat{qu \char ##x0153 -}} rens
  pa- nem
  de- de- runt pre- __ ti- o- sa
  \markup{\concat{qu \char ##x0153 -}} que
  pro- ci- bo
  ad re- fo- cil- lan- dam a- ni- mam
  Vi- de Do- mi- ne
  quo- ni- am fac- ta sum vi- __ lis
  \markup\bold La- \markup\bold med __ _ _ _ _ _ _ _ _ _ _ _ _ _
}

recdeuxfig = \figuremode {
  s1   					| % 1
  s2 <7+ 5 4 2>2   			| % 2
  <7 3+>2 <6+ 4>2  			| % 3
  <6- 4>1  				| % 4
  <3>1  				| % 5
  <3+>1  				| % 6
  <6>2 <5/>2 			 	| % 7
  s2 <6>2  				| % 8
  <2 7>4 <6 5>4 <_ 3+>4 <7 3+>4	| % 9
  s1   					| % 10
  <4>1  				| % 11
  <6>2. <6+>4  				| % 12
  s2 <5/>2  				| % 13
  s1  					| % 14
  <6>1  				| % 15
  <5/>1  				| % 16
  <7->2. <6 5>4  			| % 17
  <6 4>2 \bassFigureExtendersOn
  <_ 3>4 <7- 3>4  			| % 18
  \bassFigureExtendersOff
  s2 <5/>2 				| % 19
  s4 <5/>2 <3+ 7>4  			| % 20
  s1  					| % 21
  <6 4 3>4 <3 4 6>4 <5/>2  		| % 22
  s1  					| % 23
  <6>1  				| % 24
  <5>2 <6>2  				| % 25
  <5>2 <6>2  				| % 26
  <5>2 <6>4 <6>4  			| % 27
  <7>2 <6 4>2 \bassFigureExtendersOn  	| % 28
  <6 _>4 <6>4 \bassFigureExtendersOff <5 4>2	| % 29
  \bassFigureExtendersOn
  <_ 3>2 <7 3>2  			| % 30
  \bassFigureExtendersOff
  s1  					| % 31
}

recdeuxbass = {
  b'1 ~   		| % 1
  b ~  			| % 2
  b ~  			| % 3 
  b ~  			| % 4
  b  			| % 5
  b'2 (a)		| % 6
  g dis  		| % 7
  e g,  		| % 8
  a b  			| % 9
  e1  			| % 10
  d  			| % 11
  cis2. b4  		| % 12
  a2 cis  		| % 13
  d1  			| % 14
  fis ~  		| % 15 
  fis  			| % 16
  d2 g4 c,  		| % 17
  d2 d,  		| % 18
  g gis ~  		| % 19
  gis4 gis'2 e4		| % 20
  a2 (ges)  		| % 21
  fis4 e8 [d] cis4 d	| % 22
  a (e' a g)  		| % 23
  fis (e fis d)		| % 24
  g (fis g e)		| % 25
  a (g a fis)		| % 26
  b (a) b g		| % 27
  a2 ~ a8 [d, cis b]	| % 28
  a1 ~			| % 29
  a			| % 30
  d,			| % 31
}
