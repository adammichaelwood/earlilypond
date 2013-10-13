%%  mem.ly
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

memsopun = {
  \key d \major
  \autoBeamOff
  fis,2 ~ fis8 [g fis g]		| % 1
  a4. g8 a [b cis a]			| % 2
  d2 ~ d4. e16 [d]			| % 3
  \vxmordant cis4. b8 [cis d e cis]	| % 4
  fis2 ~ fis4. g16 [fis]		| % 5
  e1 ~					| % 6
  e4. fis16 [e] d2 ~			| % 7
  d4. e16 [d] \vxmordant cis8 [b a g]	| % 8
  \vxmordant fis [e fis g] a2 ~	| % 9
  a4 \vxmordant g8 [fis] g4 g'~	| % 10
  g4. a16 [g] fis2 ~			| % 11
  fis4. \vxmordant e16 [d] e2 ~	| % 12
  e4. \vxmordant d16 [cis] d2 ~	| % 13
  d4. s32 cis [b cis] ~ \vxmordant cis4. b16 [cis]	| % 14
  d1					| % 15
}

memlyrun = \lyricmode {
  \markup\bold Mem __ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
}

memsopdeux = {
  \key d \major
  \autoBeamOff
  r1 | r1				| % 1-2
  fis2 ~ fis8 [g fis g]			| % 3
  a4. g8 [a b cis a]			| % 4
  d1 ~					| % 5
  d4. e16 [d] cis8 [d e cis]		| % 6
  fis2 ~ fis4. g16 [fis]		| % 7
  e1 ~					| % 8
  e8 [g fis e d cis \vxmordant b a]	| % 9
  b [d e fis] cis [d cis d16 e]	| % 10
  a,8 [cis b cis] d [cis b a]		| % 11
  g2 ~ g4. \vxmordant fis16 [e]	| % 12
  fis2 ~ fis4. \vxmordant e16 [d]	| % 13
  e2 ~ \vxmordant e4. d16 [e]		| % 14
  d1					| % 15
  
}

memlyrdeux = \lyricmode {
  \markup\bold Mem __ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
}

memfig = \figuremode {
  s1				| % 1
  <6>1				| % 2
  <5>1				| % 3
  <5>1				| % 4
  s1				| % 5
  <5 4>2 <3>2			| % 6
  <3 2>2 <8>2			| % 7
  <5 4>2 <3>2			| % 8
  <3 2>2 <6>2			| % 9
  <3 2>2 <6>2			| % 10
  <7 2 3>2 <6>2			| % 11
  <6 5>2 <5/>2			| % 12
  <3 2>2 <8>2			| % 13
  <4> \bassFigureExtendersOn
  <_ 3>4 <7 3>4			| % 14
  \bassFigureExtendersOff
  s1				| % 15
}

membass = {
  \key d \major
  d'1				| % 1
  cis				| % 2
  b2 b,				| % 3
  fis' (e)			| % 4
  d4. cis8 [d e fis d]		| % 5
  a'4. (g8) [a (b cis a)]	| % 6
  d2 d,				| % 7
  a' a,				| % 8
  d fis				| % 9
  g e				| % 10
  fis fis,			| % 11
  b cis				| % 12
  d d,				| % 13
  a'1				| % 14
  d,				| % 15
}
