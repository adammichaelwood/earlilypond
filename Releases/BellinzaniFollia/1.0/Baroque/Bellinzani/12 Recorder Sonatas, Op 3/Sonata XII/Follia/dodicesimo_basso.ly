%%  dodicesimo_basso.ly
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
\relative c {
  \stdClef
  r16 d'[cis d] d,[d' e, d'] f,[d' d, d']
  cis,8[e] a[g] a[g]
  f16[d' cis d] d,[d' e, d'] f,[d' d, d']
  e,8[g] c[bes] c[bes]
  \altClef
  a16[f' e f] f,[f' g, f'] a,[f' f, f']
  \stdClef
  e,8[g] c[bes] a[g]
  f16[d' cis d] f,[d' cis d] bes,[bes' a g]
  a,8[e'] a[g] a[g]
  f16[d' cis d] d,[d' e, d'] f,[d' d, d']
  cis,8[e] a[g] a[g]
  f16[d' cis d] d,[d' e, d'] f,[d' d, d']
  e,8[g] c[bes] c[bes]
  \altClef
  a16[f' e f] f,[f' g, f'] a,[f' f, f']
  \stdClef
  e,8[g] c[bes] a[g]
  f16[d' cis d] g,[d' cis d] a[d cis d]
  d,2. 
}