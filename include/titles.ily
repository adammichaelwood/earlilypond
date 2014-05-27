%%  titles.ily
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

\include "tweaks.ily"

%% Copyright Notice
currentYear = #(strftime "%Y" (localtime (current-time)))
publisherDefault = \markup { "Copyright : " \char ##x00A9 " 2011-" \currentYear " Earlilypond" }

%% Default values
\header {
  tagline = ""
  publisher = \publisherDefault
}

%% Titles Templates
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Book front page
%% Requires (in header) :
%%   - composer
%%   - composerDate (birth-death)
%%   - title
%%   - subtitle
%%   - opus
%%   - instrument
%%   - publisher
titlePageMarkup = \markup \abs-fontsize #10 \column {
  \vspace #1
  \fill-line { \fontsize #4 \fromproperty #'header:composer }
  \vspace #1
  \fill-line { \fontsize #2 \fromproperty #'header:composerDate }
  \vspace #10
  \fill-line { \fontsize #10 \caps { \bold \fromproperty #'header:title } }
  \vspace #1
  \fill-line { \fontsize #1 \caps { \bold \fromproperty #'header:subtitle } }
  %\vspace #1
  %\fill-line { \postscript #"-20 0 moveto 40 0 rlineto stroke" }
  \vspace #3
  \fill-line { \fontsize #6 \caps { \bold \fromproperty #'header:opus } }
  \vspace #3
  \fill-line { \fontsize #6 \bold \fromproperty #'header:instrument }
  %\vspace #3
  %\fill-line { \epsfile #X #40 #"ortiz.eps" }    
  \vspace #8
  \fill-line { \concat { \publisherDefault ", " \fromproperty #'header:editor } }
}

%% Book front page with image
%% Requires (in header) :
%%   - composer
%%   - composerDate (birth-death)
%%   - title
%%   - subtitle
%%   - opus
%%   - image
%%   - editor
titlePageMarkupImage = \markup \abs-fontsize #10 \column {
  \vspace #1
  \fill-line { \fontsize #4 \fromproperty #'header:composer }
  \vspace #1
  \fill-line { \fontsize #2 \fromproperty #'header:composerDate }
  \vspace #10
  \fill-line { \fontsize #12 \caps { \bold \fromproperty #'header:title } }
  \vspace #1
  \fill-line { \fontsize #3 \caps { \bold \fromproperty #'header:subtitle } }
  \vspace #6
  \fill-line { \fontsize #6 \caps { \bold \fromproperty #'header:opus } }
  \vspace #6
  \fill-line { \fromproperty #'header:image }    
  \vspace #10
  \fill-line { \concat { \publisherDefault ", " \fromproperty #'header:editor } }
}

%% piece front page
%% Requires (in header) :
%%   - composer
%%   - composerDate (birth-death)
%%   - title
%%   - subtitle
%%   - opus
%%   - publisher
%%   - sources
%%   - notes
pieceFrontPageMarkup = \markup \abs-fontsize #10 \box { \column {
  \vspace #1
  \fill-line { \fontsize #3 \fromproperty #'header:composer }
  \fill-line { \override #'(font-family . Nimbus) \fontsize #1 \fromproperty #'header:composerDate }
  \vspace #2.5
  \fill-line { \fontsize #10 \caps { \fromproperty #'header:title } }
  \vspace #1
  \fill-line { \fontsize #2 \caps {\fromproperty #'header:subtitle } }
  \vspace #1.5
  \fill-line { \postscript #"-30 0 moveto 60 0 rlineto stroke" }
  \fill-line { \postscript #"-30 2 moveto 60 0 rlineto stroke" }
  \vspace #1
  \fill-line { \fontsize #-2 \fromproperty #'header:notes }
  \vspace #0.5
  \fill-line { \left-column { "Sources : " \fontsize #-2 \fromproperty #'header:sources } }
  \vspace #2
  \fill-line { \concat { \publisherDefault ", " \fromproperty #'header:editor } }
} }

%% piece short title
%% Requires (in header) :
%%   - composer
%%   - title
%%   - subtitle
pieceTitleMarkup = \markup {
  \column {
    \fill-line {
      \null
      \override #`(direction . ,UP) {
        \dir-column {
          \center-align \fontsize #-1 \bold
          \caps \fromproperty #'header:subtitle
          \center-align \fontsize #4 \bold
          \caps \fromproperty #'header:title
        }
      }
      \fromproperty #'header:composer
    }
    \vspace #2
  }
}



%% piece long title
pieceBigTitleMarkup = \markup \abs-fontsize #6 \column {
    \vspace #1
    \fill-line { \fontsize #5 \fromproperty #'header:composer }
    \fill-line { \fontsize #2 \fromproperty #'header:composerDate }
    \vspace #1
    \fill-line { \fontsize #8 \bold \caps \fromproperty #'header:title }
    \vspace #1
    \fill-line { \fontsize #2 \fromproperty #'header:subtitle }
    \vspace #1
    \fill-line { \postscript #"-20 0 moveto 40 0 rlineto stroke" }
    \vspace #2
    \fill-line { \fontsize #1 \fromproperty #'header:sources }
    \vspace #2    
  }
  
pieceBigTitleMarkupNoSource = \markup \abs-fontsize #6 \column {
    \vspace #1
    \fill-line { \fontsize #5 \fromproperty #'header:composer }
    \fill-line { \fontsize #2 \fromproperty #'header:composerDate }
    \vspace #1
    \fill-line { \fontsize #8 \bold \caps \fromproperty #'header:title }
    \vspace #0.5
    \fill-line { \fontsize #3 \fromproperty #'header:subtitle }
    \vspace #1
    \fill-line { \fontsize #4 \fromproperty #'header:opus }
    \vspace #1
    \fill-line { \postscript #"-20 0 moveto 40 0 rlineto stroke" }
    \vspace #2
  }
  
pieceMediumTitleMarkup = \markup \abs-fontsize #6 \column {
    \vspace #1
    \fill-line { \fontsize #5 \fromproperty #'header:composer }
    \fill-line { \fontsize #2 \fromproperty #'header:composerDate }
    \vspace #1
    \fill-line { \fontsize #8 \bold \caps \fromproperty #'header:title }
    \vspace #1
    \fill-line { \postscript #"-20 0 moveto 40 0 rlineto stroke" }
    \vspace #2
  }
  
suiteSimpleTitleMarkup = \markup \abs-fontsize #6 \column {
  \vspace #5
  \fill-line { \fontsize #8 \bold \fromproperty #'header:suite }
  \vspace #3
}

scoreSimpleTitleMarkup = \markup \abs-fontsize #6 \column {
  \vspace #1
  \left-align { \fontsize #6 \caps \fromproperty #'header:piece }
  \fill-line  { \fontsize #5 \italic \fromproperty #'header:part }
  \vspace #1
}

scoreNumberedTitleMarkup = \markup \abs-fontsize #6 \column {
  \vspace #1
  \fill-line { \fontsize #10 \box \fromproperty #'header:number } 
  \vspace #0.5
  \left-align { \fontsize #6 \caps \fromproperty #'header:piece }
  \vspace #1
}
  
bookNotePageMarkup = \markup \abs-fontsize #6 \column {
  \vspace #1
  \fill-line { \fontsize #8 \caps \fromproperty #'header:title }
  \vspace #1
  \fill-line { \fontsize #8 \caps \fromproperty #'header:subtitle }
  \vspace #1
  \fill-line { \fontsize #7 \caps \fromproperty #'header:subsubtitle }
  \vspace #1
  \fill-line { \fontsize #7 "." }
  \vspace #1
  \fill-line { \fontsize #8 \caps \fromproperty #'header:opus }
  \vspace #1
  \fill-line { \fontsize #7 "." }
  \vspace #4
  %\fill-line { \fontsize #4 \fromproperty #'header:sources }
  %\fill-line { \fontsize #8 \bold \caps "Notes" }
  
}