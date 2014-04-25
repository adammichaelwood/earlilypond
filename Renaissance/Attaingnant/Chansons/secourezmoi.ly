%%  secourezmoi.ly
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
  composer = "Claudin de Sermisy"
  composerDate = "1495-1562"
  date = "1530"
  title = "Secourez-moy"
  sources = \markup \left-column {
    \concat {"[1] " \italic "Trente et Sept chansons musicales à quatre parties, nouvellement et correctement imprimées à Paris par Pierre Attaingnant, 1530"}
    \with-url #"http://catalogue.bnf.fr/ark:/12148/cb428211660" "http://catalogue.bnf.fr/ark:/12148/cb428211660"
  }
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

global = {
  \set Score.skipBars = ##t
  
  % incipit
  \once \override Score.SystemStartBracket #'transparent = ##t
  \override Score.SpacingSpanner #'spacing-increment = #1.0 % tight spacing
  \time 2/2
  \once \override Staff.TimeSignature #'style = #'mensural
  \override Voice.NoteHead #'style = #'neomensural
  \override Voice.Rest #'style = #'neomensural
  \set Staff.printKeyCancellation = ##f
  \cadenzaOn % turn off bar lines
  \skip 1*1
  \once \override Staff.BarLine #'transparent = ##f
  \bar "||"
  \skip 1*1 % need this extra \skip such that clef change comes
            % after bar line
  \bar ""

  % main
  \revert Score.SpacingSpanner #'spacing-increment % CHECK: no effect?
  \cadenzaOff % turn bar lines on again
  \once \override Staff.Clef #'full-size-change = ##t
  \set Staff.forceClef = ##t

  \time 2/2
  \override Voice.NoteHead #'style = #'default
  \override Voice.Rest #'style = #'default

  % FIXME: setting printKeyCancellation back to #t must not
  % occur in the first bar after the incipit.  Dto. for forceClef.
  % Therefore, we need an extra \skip.
  \skip 1*1
  \set Staff.printKeyCancellation = ##t
  \set Staff.forceClef = ##f

  \skip 1*79 % the actual music

  % let finis bar go through all staves
  \override Staff.BarLine #'transparent = ##f

  % finis bar
  \bar "|." 
}

superius = \relative c' {
  \set Staff.instrumentName = #"Superius"
  
  % incipit
  \clef "petrucci-c1"
  r2 d2 \skip 1*1
  
  % main
  \clef "treble"
  \key d \minor 
  r2 d d1 e f r2 f f f f e4 d e2 e f2. e4 d c d2 d d c f f f e c e2. d4 e f g f e d d1 c2
  d1 r2 d d1 e f r2 f f f f e4 d e2 e f2. e4 d c d2 d d c f f f e c e2. d4 e f g f
  e4 d d1 c2 d4 e f g a b c2. b4 a1 g2 a1 r2 f f f f e4 d e2 e f2. e4 d c d2 d d c f f f
  e2 c e2. d4 e f g f e d d1 c2 d1 r2 f f2. e4 d2 d c f f f e c e2. d4 e f g f e d d1 c2 d\longa
}

contratenor = \relative c' {
  \set Staff.instrumentName = #"Contratenor"
  
  % incipit
  \clef "petrucci-c4"
  r2 a \skip 1*1
  
  % main
  \clef "G_8"
  \key d \minor 
  r2 a a2. b4 c1. c2 a d2. c4 c1 b2 c1 a r2 f f d e d4 e f g a b c1 c2. b4 c2 d
  c2 b a1 r2 d, f2. g4 a2. b4 c1. c2 a d2. c4 c1 b2 c1 a r2 f f d e d4 e f g a b c1 c2. b4 c2 d
  c2 b a1 a2 d1 c2 e\breve c1 r2 d d c c b c1 a r2 f f d e d4 e f g a b c1 c2. b4 c2 d c b a1
  f2 d f2. g4 a1 d, e2 d4 e f g a b c1 c2. b4 c2 d c b a1 a\longa
}

tenor = \relative c {
  \set Staff.instrumentName = #"Tenor"
  
  % incipit
  \clef "petrucci-c4"
  r2 d2 \skip 1*1
  
  % main
  \clef "G_8"
  \key d \minor 
  r2 d f1 g a r2 a a a a g4 f g2 g f1 r2 d d4 e f g a1 r2 a2 a a g4 f e f g a b a
  g4 f e d e1 d r2 d f1 g a r2 a2 a a a g4 f g2 g f1 r2 d d4 e f g a1 r2 a a a g4 f e f g a b a
  g4 f e d e1 d r2 a' c1 b a r2 a a a a g4 f g2 g f1 r2 d d4 e f g a1 r2 a a a g4 f e f g a b a
  g4 f e d e1 d r2 d f1 g a r2 a a a g4 f e f g a b a g f e d e1 d\longa
}

bassus = \relative c {
  \set Staff.instrumentName = #"Bassus"
  
  % incipit
  \clef "petrucci-f4"
  r2 d \skip 1*1
  
  % main
  \clef bass
  \key d \minor 
  r2 d d1 c f r2 d f2. e4 d2 d c1 f, r2 bes bes bes a d d d c a c1. g2 c d a1
  d1 r2 d d1 c f r2 d f2. e4 d2 d c1 f, r2 bes bes bes a d d d c a c1. g2 c d a1
  d1 r2 a a1 e' a, r2 d2 f2. e4 d2 d c1 f, r2 bes bes bes a d d d c a c1. g2 c d a1
  d1 r2 d d1 bes a2 d d d c a c1. g2 c d a1 d\longa
}

suplyrics = \lyricmode {
  _ Se- cou- rez moy ma- da- me par _ _ _ a- mours _ _ _
  ou aul- tre- ment
  ou aul- tre- ment
  la mort _ _ _ _ _ me _ vient que- rir
  aul- tre que vous ne peut don- ner _ _ _ se- cours _ _ _
  a mon las coeur le- quel pour vous sen va _ _ _ _ _ mou- _ rir
  hel- _ _ _ _ _ _ las _ hel- _ las ve- nez tost se- _ _ _ cou- rir _ _ _
  cel- luy qui vit pour vous en gran- de tris- tes- _ _ _ _ _ _ _ _ se
  car de _ _ son coeur vous es- tes la mais- tres- _ _ _ _ _ _ _ _ _ se.
}

\book {
  \bookOutputSuffix "original"
  \paper{\localPaper}
  \score {
    \new StaffGroup  <<
      \new Voice = "Superius" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \global \superius >>
      \new Lyrics \lyricsto Superius { \suplyrics }
      \new Voice = "Contratenor" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \global \contratenor >>
      \new Voice = "Tenor" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \global \tenor >>
      \new Voice = "Bassus" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \global \bassus >>
    >>
    \layout{\localLayout}
  }
}

\book {
  \bookOutputSuffix "F"
  \paper{\localPaper}
  \score {
    \new StaffGroup  <<
      \new Voice = "Superius" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \global \transpose d f { \superius} >>
      \new Lyrics \lyricsto Superius { \suplyrics }
      \new Voice = "Contratenor" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \global \transpose d f { \contratenor} >>
      \new Voice = "Tenor" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget)  \global \transpose d f { \tenor} >>
      \new Voice = "Bassus" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \global \transpose d f { \bassus} >>
    >>
    \layout{\localLayout}
  }
}