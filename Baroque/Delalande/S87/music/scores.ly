%%  scores.ly
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

staffSettings = {
  #(set-accidental-style 'forget)
  \set Staff.instrumentName = #""
  \set Staff.shortInstrumentName = #""
}

lyrSettings = {
  \override Lyrics . LyricText #'font-shape = #'italic
}

figSettings = {
  \set figuredBassAlterationDirection = #LEFT
  \set figuredBassPlusDirection = #LEFT
  \override VerticalAxisGroup #'minimum-Y-extent = #'()
  \override BassFigureAlignment #'stacking-dir = #UP
  \override FiguredBass.BassFigure #'font-size = #-2
}

\include "v1.ly"
