%%  jod.ly
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

jodsopun = {
  fis2. \vxmordant e8 [d]				| % 1
  e2. \vxmordant d8 [cis]				| % 2
  d2 ~ d4. s32 cis32 [b cis ~]				| % 3
  \vxmordant cis2. b8 [c]				| % 4
  b8 [d cis d e fis d e]				| % 5
  \vxmordant cis [b cis a] d2 ~				| % 6
  d d8 [e d e]						| % 7
  d4. s32 cis32 [b cis ~] \vxmordant cis4. b16 [cis]	| % 8
  d1							| % 9
}

jodlyrun = \lyricmode {
  \markup\bold Jod __ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
}

jodsopdeux = {
  d1 ~						| % 1
  d4 \vxmordant cis8 [b] cis2 ~		| % 2
  \stemDown cis4 \vxmordant b8 [a] b2 ~	| % 3
  \stemUp b4 \vxdmordant a8 [g] a2 ~		| % 4
  a4 \vxdmordant g8 [fis] g2 ~			| % 5
  g4. a16 [g] fis8 [g a b]			| % 6
  e, [fis e fis] e2 ~ 				| % 7
  e4. fis16 [e ~] \vxmordant e4. d16 [e]	| % 8
  d1						| % 9
  \stemNeutral
}

jodlyrdeux = \lyricmode {
  \markup\bold Jod __ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
}

jodfig = \figuremode {
  s1			| % 1
  <6 5>4 s2.		| % 2
  <6 5>2 <6 5/>2	| % 3
  <3 2>2 <5>4 <7->4	| % 4
  <3 2>2 <6 5>2		| % 5
  <7>2 <5>4 <6>4	| % 6
  <6 5>2 <5/>4 <6+>4 	| % 7
  <5 4>2 <3>4 <7>4 	| % 8
  s1 			| % 9
}

jodbass = {
  d4 (cis) b (d)	| % 1
  g, (e) a (cis)	| % 2
  fis, (a) gis (e)	| % 3
  a, (a') fis d		| % 4
  g (b) g (e)		| % 5
  a (fis) b fis 	| % 6
  g (a) gis b		| % 7
  a (g) a (a,)		| % 8
  d,1			| % 9
}
