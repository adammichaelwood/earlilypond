%%  diciottesimo_flauto.ly
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
\clef treble
\key d \minor
\relative c'' {
  \mark \markup "18"
  r16 a'16[g a] d,[a' e a] f[a d, bes']
  cis,[e d e] cis[e b e] a,[e' g, e']
  f,[f' e f] d[f c f] bes,[f' a, f']
  g,[g' f g] e[g d g] c,[g' bes, g']
  a,[f' e f] d[f c f] bes,[f' a, f']
  g,[e' d e] cis[e b e] a,[e' g, e']
  f,[f' e fis] g[bes f! bes] e,[bes' d, bes']
  cis,[e d e] cis[e d e] a,[e' g, e']
  f,[a' g a] d,[a' e a] f[a d, bes']
  cis,[e d e] cis[e bes e] a,[e' g, e']
  f,[f' e f] d[f c f] bes,[f' a, f']
  g,[g' f g] e[g d g] c,[g' bes g]
  a,[f' e f] d[f c f] bes,[f' a, f']
  g,[e' d e] cis[e b e] a,[e' g, e']
  f,[a' g a] d,[a' e a] f[a e a]
  d,2.
  \bar "|."
  %\break
}
