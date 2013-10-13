%%  missa_cantus.ly
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

fughecantus={s1*8}

missacantus=\relative c'' {
  \clef treble
  r\longa r\breve r1
  g\breve c1 d e1. e2 d g1 fis2 g1 g,1 c d e1. e2
  d2 g2. f4 e d c b a2 d1 g,2 c2. b4 a2 d2. c4 b a g2 g'2. f4
  e2. d4 c2. b4 a1 d2. c4 b2. a4 g1 a\breve. b1 c\breve r
  c,1 g'\breve. a\breve b a1. c1 b4 a b1 c\longa
  
}

lyrmissacantus=\lyricmode {
  Ky -- ri -- e e -- _ _ le -- i -- son
  ij _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Ky -- ri -- e e -- _ le -- _ _ i -- son
}