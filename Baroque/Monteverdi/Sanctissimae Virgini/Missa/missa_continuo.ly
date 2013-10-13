%%  missa_continuo.ly
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


fughecontinuo=\relative c {
  \cadenzaOn
  \time 9/8
  %\clef varbaritone
  \clef bass
  c1_\markup{"Prima"} g' a b1. g2 a c1 b2 c1 \bar "|"
  r2_\markup{"Seconda"} g a f g1 c,2 c'2. b4 b2 a1 g \bar "|"
  r2_\markup{"Terza"} g1 f2 e g d1 e2 c d1 c \bar "|"
  r2_\markup{"Quarta"} c1 e2 d c g'1 \bar "|"
  r2_\markup{"Quinta"} g2 a c1 b2 c1 \bar "|"
  g1._\markup{"Sesta"} g2 e c g'1 \bar "|"
  r2_\markup{"Settima"} b2 c1 g2 b a1 g \bar "|"
  r2_\markup{"Ottava"} g g e a1 g1 \bar "|"
  r2_\markup{"Nona"} c, g' g a1 g1 \bar "|"
  r2_\markup{"Decima"} g1 c,2 g'2. a4 b2 c g\longa \bar "|."
  \cadenzaOff
}

missacontinuo= \relative c {
  \cadenzaOn
  \time 9/8
  %\clef varbaritone
  \clef bass
  
  %% Kyrie
  c\breve g'1 a \bar "|"
  g\breve a2 c1 b2 \bar "|"
  c2. b4 a2. g4 f2 g c,1~ \bar "|"
  c1 c'2 b a1 g \bar "|"
  c,\breve g'1 c \bar "|"
  a1 g g a2 c \bar "|"
  g1 c2. b4 a2. g4 f e d2 \bar "|"
  g2. f4 e2. d4 c2. b4 a1 \bar "|"
  d2. c4 b a g2 g'2. f4 e d c2 \bar "|"
  a'2. g4 f e d2 d'2. c4 b a g2 \bar "|"
  c2. b4 a1 d2. c4 b1 \bar "|"
  a1 g c,\breve \bar "|"
  f\breve g \bar "|"
  a\breve g c,\longa \bar "||"
  
  
  \cadenzaOff
}