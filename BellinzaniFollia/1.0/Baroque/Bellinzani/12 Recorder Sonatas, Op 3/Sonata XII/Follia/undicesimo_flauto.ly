%%  undicesimo_flauto.ly
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

\time 9/8
\relative c'' {
  \mark \markup "11"
  d'8[a f] d[f a] d[f, d]
  a'[e cis] a[cis e] a[e cis]
  d'[a f] d[f a] d[f, d]
  c'[g e] c[e g] c[e, c]
  f[c a] f[a c] f[a,f]
  c''[g e] c[e g] a[e cis]
  d'[a f] e[f a] d[bes, g]
  a'[e cis] a[cis e] a[cis, a]
  d'[a f] d[f a] d[f, d]
  a'[e cis] a[cis e] a[e cis]
  d'[a f] d[f a] d[f, d]
  c'[g e] c[e g] c[e, c]
  f[c a] f[a c] f[a, f]
  c''[g e] c[e g] a[e cis]
  d'[f, d] bes'[g d] a[d cis]
  d2.~ d4.
  
  \bar "||"
  \break
}