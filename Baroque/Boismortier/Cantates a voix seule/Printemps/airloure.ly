%% recitatif1.ly
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

%% DESSUS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Bdessus = {
  \clef french
  \time 6/8
  \key d \major
  \relative c'' {
    \tempo "Louré"
    \partial 8 b8
    e [(fis) g] g, [(\vplaintehoriz fis) e]
   \bar "||"  \mark \markup \normalsize { \musicglyph  #"scripts.segno" }
  }
}

%% VOICE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Bvoice = {
  \clef treble
  \key d \major
  \relative c'' {
    \time 6/8
    \autoBeamOff
    \partial 8 r8
    r2.
    \bar "|." \break
  }
}

Blyrics = \lyricmode {
  _
}

%% FIGURED BASS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Bbassefig = \figuremode {
  s8
  s2.
}

Bbasse = {
  \clef bass
  \key d \major
  \time 6/8
  \relative c, {
    \partial 8 r8
    e4. r4 r8
  }
  \bar "|."
}
