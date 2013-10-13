%%  diciassettesimo_basso.ly
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
\stdClef
\key d \minor
\relative c {
  d8[f a] d[f16 e d e]
  cis4. r4.
  d,8[f a] d[c16 bes a f]
  e4. r4.
  f8[a c] f[f,16 g a bes]
  c4. cis,
  d8[f a] d[bes16 a g bes]
  a4. r4.
  d,8[f a] d[f16 e d e]
  cis4. r4.
  d,8[f a] d[c!16 bes a f]
  e4. r4.
  f8[a c] f[f,16 g a bes]
  c4. cis,4.
  d8[f a] d[g, a]
  d,4. r4.
}
