%%  diciassettesimo_flauto.ly
%%  This file is part of the Earlilypond project
%%  
%%  Copyright (c) 2011-2013 Benjamin Coudrin <benjamin.coudrin@gmail.com>
%%                All Rights Reserved
%%
%%  This program is free software. It comes without any warranty, to
%%  the extent permitted by applicable law. You can redistribute it
%%  and/or modify it under the terms of the Do What The Fuck You Want
%%  To Public License, Version 2, as published by Sam Hocevar. See
%%  http://sam.zoy.org/wtfpl/COPYING for more details.

\time 6/8
\clef treble
\key d \minor
\relative c'' {
  \mark \markup "17"
  r2.
  a8[cis e] g8[a16 g f e]
  f4. r4.
  c8[e g] bes8[c16 bes a g]
  a4. r4.
  c,8[e g] c,8[a'16 g f e]
  f4 e8 d8.[f16 e d]
  cis8[a' e] cis[e g,]
  f4. r4.
  a8[cis e] g[a16 g f e]
  f4. r4.
  c8[e g] bes[c16 bes a g]
  a4. r4.
  c,8[e g] c,[a'16 g f e]
  f8[a16 g f e] f8[g e]
  d4. r4.
  \bar "||"
  \break
}
