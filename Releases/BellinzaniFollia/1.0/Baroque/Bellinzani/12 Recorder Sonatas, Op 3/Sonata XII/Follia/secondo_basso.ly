%%  secondo_basso.ly
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

%\include "global.ly"

\relative c {
  \stdClef
  d8[ cis] d8[ e] f8[ d]
  a'8[ g] a8[ b] cis8[ a8]  
  \altClef
  d8[ cis] d8[ e] f8[ d]
  e8[ d] e8[ c] d8[ e]
  \stdClef
  f,8[ e] f8[ g] a8[ bes]
  c8[ g] cis,8[ d] e8[ cis]
  d8[ c] bes8[ a] bes8[ g]
  a8[ e'] a8[ e] cis8[ a]
  d8[ cis] d8[ e] f8[ d]
  a'8[ g] a8[ b] cis8[ a8]
  \altClef
  d8[ cis] d8[ e] f8[ d]
  e8[ d] e8[ c] d8[ e]
  \stdClef
  f,8[ e] f8[ g] a8[ bes]
  c8[ g] cis,8[ d] e8[ cis]
  d8[ g] a8[ g] a8[ a,]
  d2.
}