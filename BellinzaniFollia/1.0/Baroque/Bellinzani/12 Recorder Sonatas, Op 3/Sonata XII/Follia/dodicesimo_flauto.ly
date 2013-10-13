%%  dodicesimo_flauto.ly
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

\time 3/4
\relative c'' {
  \mark \markup "12"
  r2.
  r16 a'[g a] a,[a' b, a'] cis,[a' a, a']
  d,8[e] f[g] a[f]
  g16[c bes c] c,[c' d, c'] e,[c' c, c']
  f,8[g] a[bes] c[a]
  g16[c bes c] c,[c' d, c'] e,[a e a]
  d,8[e] f[e] d[d]
  cis16[a' g a] a,[a' b, a'] cis,[a' a, a']
  f8[e] f[g] a[f]
  e16[a g a] a,[a' b, a'] cis,[a' a, a']
  d,8[e] f[g] a[f]
  g16[c bes c] c,[c' d, c'] e,[c' c, c']
  f,8[g] a[bes] c[a]
  g16[c bes c] c,[c' d, c'] e,[a e a]
  f8[e] d[e] f[e]
  d2. 
  
  \bar "||"
  \break
}