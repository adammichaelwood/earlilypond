%%  definitions.ly
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

% Cover page
titlePageMarkup = \markup \abs-fontsize #10 \column {
  \vspace #6
  \fill-line { \fontsize #8 \fromproperty #'header:composer }
  \vspace #1
  \fill-line { \fontsize #4 \fromproperty #'header:date }
  \vspace #6
  \fill-line { \fontsize #10 \bold \fromproperty #'header:title }
  \vspace #1
  \fill-line { \postscript #"-20 0 moveto 40 0 rlineto stroke" }
  \vspace #5
  \fill-line { \bold \fontsize #6 \rounded-box \fromproperty #'header:instrument }
  \vspace #8
  \fill-line { \fromproperty #'header:publisher }
}