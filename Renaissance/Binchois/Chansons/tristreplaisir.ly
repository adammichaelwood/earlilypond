%%  tristreplaisir.ly
%%  This file is part of the Earlilypond project
%%  
%%  Copyright (c) 2014 Benjamin Coudrin <benjamin.coudrin@gmail.com>
%%                All Rights Reserved
%%
%%  This program is free software. It comes without any warranty, to
%%  the extent permitted by applicable law. You can redistribute it
%%  and/or modify it under the terms of the Do What The Fuck You Want
%%  To Public License, Version 2, as published by Sam Hocevar. See
%%  http://sam.zoy.org/wtfpl/COPYING for more details.

\version "2.16.2"
\include "../../../include/format.ily"
\include "../../../include/notation.ily"

\header {
  composer = "Gilles Binchois"
  composerDate = "1400-1460"
  date = ""
  title = "Tristre Plaisir"
  sources = ""
}

localPaper = \paper {
  bookTitleMarkup = \pieceBigTitleMarkup
}

localLayout = \layout {
  \layoutCommons
  \context {
    \Score
    \override SpacingSpanner #'uniform-stretching = ##t
    %\remove Bar_engraver
    \override BarLine #'transparent = ##t
    \remove "System_start_delimiter_engraver"
  }
}

superius = \relative c' {
  \set Staff.instrumentName = #""
  
  \clef "treble"
  \key c \major
  \time 6/8
  d4. ~ d4 c8
  d4 e16 [f] g8 a
  bes
}

tenor = \relative c' {
  \set Staff.instrumentName = #"Tenor"
    
  \clef "bass"
  \key d \minor 
  \time 6/8
  g4. ~ g4 e8
}

contratenor = \relative c' {
  \set Staff.instrumentName = #"Contratenor"
  
  \clef "bass"
  \key d \minor 
  \time 6/8
  g4. bes4 g8
}

suplyrics = \lyricmode {
  _ _
}

\book {
  \bookOutputSuffix "original"
  \paper{\localPaper}
  \score {
    \new StaffGroup  <<
      \new Voice = "Superius" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \superius >>
      \new Lyrics \lyricsto Superius { \suplyrics }
      \new Voice = "Contratenor" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \tenor >>
      \new Voice = "Tenor" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \contratenor >>
    >>
    \layout{\localLayout}
  }
}
