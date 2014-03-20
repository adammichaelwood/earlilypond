%%  cavalier.ly
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
\include "../../include/format.ily"
\include "../../include/notation.ily"

#(set-global-staff-size 17)

\header {
  composer = "John Blow"
  composerDate = "1649-1708"
  date = "1700"
  title = "A Song with Flutes"
  %subtitle = \markup \center-column {"And is my Cavalier return'd"}
  sources = \markup \left-column {
    \concat {"[1] " \italic "Amphion Anglicus, a Work of many compositions, for One, Two, Three and Four voices" ", by Dr. John Blow, 1700"}
    \with-url #"http://numerique.bibliotheque.toulouse.fr/ark:/74899/B315556101_RMB0500" "http://numerique.bibliotheque.toulouse.fr/ark:/74899/B315556101_RMB0500"
  }
}

\paper {
  line-width    = 188\mm
  left-margin   = 10\mm
  top-margin    = 8\mm
  bottom-margin = 10\mm
  ragged-last-bottom = ##t 
  ragged-bottom = ##f
  annotate-spacing = ##f
  #(define page-breaking ly:minimal-breaking)
  %bookTitleMarkup = \pieceBigTitleMarkup
}

\layout {
  \context {
    \Score
    \override SpacingSpanner #'uniform-stretching = ##t
    \override Stem #'neutral-direction = #1
  }
  \context {
    \Voice
    \override TupletNumber #'stencil = ##f 
    \override TupletBracket #'bracket-visibility = ##f 
  }
  \context {
    \RemoveEmptyStaffContext
    \override VerticalAxisGroup #'remove-first = ##t 
  }
  \context { 
    \Staff
    \override BassFigure #'font-size = #-1
  } 
  \context { 
    \Lyrics
    \override LyricText #'font-size = #0
    \override LyricText #'font-shape = #'italic
  } 
}

fluteun = \relative c'' {
  \clef french
  \ter
  e4 e a
  gis8. [a16] b4 c
  b8. [c16] d4 b
  c2 r4
  r g c
  b8. [a16] g4 d'
  d c c
  c (b) e
  e8. [d16] c4 c
  c4. b8 a4
  a2 r4
  r2.
  r2.
  r2.
  r2.
  r4 r a 
  c b cis
  d2 a4
  bes a g
  a2.
  g4 f2
  e2 r4
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r4 r a
  e'8. [d16] c8. [d16] b4
  c2 cis4
  d8. [c16] b8. [c16] a4
  gis2 d'4
  e8. [d16] c8. [d16] b4
  c4. d8 e4 \bar "" c2 b8 [a]
  a2 r4
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2 r4
  r2.
  r4 r b
  c8. [b16] c8. [d16] c [d c b]
  a8. [g16] a8. [b16] a [b a g]
  f4 f4. e8
  e4 e' e
  e d c
  c4. b8 a4
  a2 r4
  r2.
  r2.
  r2.
  r2.
  r1.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r4 r \bar "" \break a
  fis a d
  a2 d4
  a fis a
  fis a d
  a2 fis4
  a2 d4
  cis2 r4
  r2.
  r2.
  r2.
  r2 \bar "" \break r4
  r4 r a
  g4. a8 f4
  e4. f8 d4
  cis2 r4
  r c' b8 [a]
  a2 r4
  r4 a8 [e] a4
  r4 a8 [f] bes4
  bes8 [g] c4 a
  a4. a8 bis4
  c2 r4
  r4 r8 c a4
  f a b
  gis2 a4
  a2.
  a2 gis4
  \bla
  a4 \bar "||" \break
}

flutedeux = \relative c'' {
  \clef french
  \ter
  r2.
  e4 e a
  gis8. [a16] b4 gis
  a e a
  ges8. [f16] e4 fis
  g b b
  b a a
  a gis e
  fis gis a
  a2 gis4
  a2 r4
  r2.
  r2.
  r2.
  r4 r e
  f e d
  e d e
  f e fis
  g2 d4
  fes e d
  e d d'
  c a \bar "" \break r
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2 r4
  r4 r e
  a8. [g16] f8. [g16] e4
  f2 d'4
  e8. [d16] c8. [d16] b4
  c8. [b16] a8. [b16] gis4
  a b a2. gis4
  a2 r4
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r4 r e
  g8. [f16] g8. [a16] g [a g f]
  e8. [d16] e8. [f16] e [f e d]
  c4 r e'
  c8. [b16] c8. [d16] c [d c b]
  a4 d8. [c16] b [a] gis [a]
  gis2 e4
  fis gis a
  a2 gis4
  a2 r4
  r2.
  r2.
  r2.
  r2.
  r1.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r4 r fis
  d fis a
  fis2 f4
  d a' fis
  d fis a
  fis2 d4
  fis2 a4
  a2 r4
  r2.
  r2.
  r2.
  r4 r f
  e4. f8 d4
  cis2 a'4
  g4. a8 f4
  e2 e'4
  c b8 [a] e4
  e2 r4
  e8 [c] e4 c'8 [a]
  a [cis,] d4. d8
  e4. e8 f [c]
  d4. c8 d4
  e8. [g16] e4 c
  g'2 r8 c
  a4 d f,
  e d c
  f8 [e d e] f4
  e2 e4
  \bla
  e
}

voice = \relative c'' {
  \autoBeamOff
  \clef treble
  \ter
  r2.*10
  r4 r4 a
  e'8. ([d16] c8 [d]) c [(b)]
  c8. ([b16] a8. [c16] b8) c
  d4 (c) b8 [(a)]
  a2 r4
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r4 r a
  e'8. ([d16] c8 [d]) c [(b)]
  c8. ([b16] a8. [c16] b8) c
  d4 (c) b8 [(a)]
  a2 a32 ([b c8.])
  bes4 a r
  d8 ([cis] d4) g
  g32 ([f e8.]) d8 [(c)] f e
  f2 a,32 ([b c8.])
  bes4 a2
  d8 ([cis] d4) g
  f2 e8 [(d)]
  d2 \bar "" \break r4
  r2.
  r2.
  r2.
  r2.
  r2.
  r1.
  r4 r \bar "" \break a
  e'8. ([d16] c8 [d]) c8 ([b])
  c8. ([b16] a8. [c16] b8) c
  d4 (c) b8 [(a)]
  a4 f'2
  e4. f8 d4
  c8 ([d16 c] bes4) r
  a4. bes8 a4
  g8 ([a16 g] f4) r
  e4. f8 d4
  g'8. ([f16] e8. [d16] cis4)
  d4. cis8 d4
  e2 r4
  f8 ([e] d [c b a])
  e'4 a, b
  c4. (b8) a4
  a2 \bar "" \break r4
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r4 r \bar "" \break e'
  g8. [f16] g8. [a16] g [a g f]
  e8. [d16] e8. [f16] d [f e d]
  c8. [b16] c8. [d16] c [d c b]
  a4 a d8 cis
  d4. (f8) e4 \bar "" f2 g4
  a a, b
  c4. (b8) a4
  e'2 e4
  g2.
  g4 c, d
  e4. (f8) e8 ([d])
  e2.
  e4 a, b
  c4. (d8) b4
  c2 d4
  e (d) e
  f e d
  e8 ([d c8. d16]) b4
  c4. (d8) e4
  c2 b8 [(a)]
  a2 a4
  fis a d
  a2 r4
  r r a
  fis a d
  a d fis
  d2 a4
  d4. (e8) fis [(e)]
  e2 d16 ([e fes8])
  e4. f8 d4
  c4. d8 bes4
  a4. (bes8) g4
  a2 r4
  r2.
  r
  r
  r4 e' a,
  e'2.
  r4 a e
  a2 e8 a,
  e'4  f8 d g4
  g8 e c4 f
  f4. (e8) f4
  g2 r8 g
  e4 c f
  r8 a f4 d
  b2 a4
  d8 ([e f e]) d [(c)]
  c2 b8 [(a)]
  \bla
  a4 r4 r2
  r1
  r4 e'8 a, e'4 a8 e
  a8. a16 g8 a f e d16 [(c)] b [(a)]
  e'4 r r2
  r4 e8 c g'4 r
  r g8 e a8. g16 fis [(g)] fis [(e)]
  dis8 b e fis g fis16 [(g)] a [(g)] fis [(e)]
  e4 e8 c a4 f'8 d
  g4 e8 f16 g c,8 d f16 [(e)] d [(c)]
  g'4 r8 gis gis g gis g
  a a a a e ([d16 c] b8) e
  c16 b a8 d e f8 ([e] d16 [c b]) c
  b4 r8 gis' gis g gis g
  a a a a b [(e,)] e4
  c16 b a8 d cis d8. ([e16] d8) e
  f4 e4. f16 ([e] d8) c16 ([b])
  c8 a a'4. g16 [f] e [f d e]
  f8 e a, d c4. b16 ([a])
  a1
  \bar "|."
}

voicelyr = \lyricmode {
  And is my Ca- __ va- lier re- turn'd,
  And is my Ca- __ va- lier re- turn'd?
  Oh! wel- come, wel- come, wel- come to my Arms,
  Oh! wel- come, wel- come to my Arms;
  And is my Ca- __ va- lier re- turn'd?
  Oh! how have I figh'd, how have I mourn'd,
  how have I figh'd, how have I mourn'd,
  dread- __ _ ing the worst of harms?
  What trem- __ _ _ _ _ _ _ _ _ _ bling
  were with- in my breast,
  at ev' ry at- tack't was made I sent,
  still as my fears en- creast,
  stil as my fears en- creast,
  I sent ten thou- sand, ten thou- sand
  wi- shes to your aid;
  But see, see, see, see,
  but see, see, see, see,
  see the Fate of rug- ged War;
  Oh! bar- ba- rous, bar- ba- rous Sun and Dust;
  Come, come, come,
  come, come, come you must be,
  you must be, you must be Mar- ti- la's care,
  she must, she must she must, she must
  re- cruit what you have lost:
  Come, come, come, come, come, come
  be to your self Phi- lan- der kind;
  Come, come, come, come, come, come
  be to your self, be to your self Phi- lan- der kind;
  come, come, come, come, come, come,
  on your Myr- til- la's bo- som rest;
  the care- full, care- full, care- full, care- full,
  care- full ge- ne- ral Love for you de- sign'd;
  the care- full, care- full, care- full, care- full,
  care- full ge- ne- ral Love for you de- sign'd,
  warm win- ter Quar- ters,
  war- __ _ m win- ter Quar- ters in my Breast.
}

bassefig = \figuremode {
  <_>4 <6> <6>
  <3+> <6> <6>
  <3+> s s
  s s s
  <_-> s <6+>
  s s <6>
  <6 4> <5 3> <6>
  <7> <3+> <6>
  \bassFigureExtendersOn
  <9 3+>8. <8 3+>16
  \bassFigureExtendersOff
  <6 3+>2
  s2.
  s
  s
  s2 <5 6>4
  <4>2 <3+>4
  s2.
  s2 <6>4
  <6> <5> <3+>
  s2 <3+>4
  <3-> s <6>
  <6> <5> s
  <5-> s s
  s2.
  s
  s2 <6 5>4
  <6 4>2.
  s2 <5->4
  <3- 6> <3+>2
  <7>4 <6>2
  s <6>8 <6>
  s2 <5->4
  <3- 6> <3+>2
  <7>4 <6> s
  <4>2 <3>4
  s2 <6>4
  s <5-> s
  <5> <6> <3+>
  s s <6>
  <3+> <5-> <5->
  s <7> <3+>
  s <6+> s <6 4> s s
  s s <6>
  <3+> <5-> s
  s s <6 5>
  <4> s <3+>
  <5> <6> s
  <6 3-> s <6>
  <6> <5-> <6->
  s s <_->
  <_- 4> <6 3>8 <5> <6>4
  s <7> <6>
  <7 3+> s s
  s s <3+>
  s2.
  s4 <3+> <6>
  <6> s <6>
  <6 4> s s
  s2.
  s
  s2 <6>8 <5>
  s2.
  s2 <6>8 <5>
  s2.
  <3+>4 s s
  <9 3+> <7 3+> s
  s2.
  s
  s
  s2 <6>8 <5>
  s2 <6>8 <5>
  s2 <7>8 <6+>
  s4 <4> <3+> s2.
  s
  <7>4 <3+> <6>
  <3+> s s
  s2.
  s
  s
  s
  <7>4 <6> <3+>
  s2 <3+>4
  s2.
  s
  s4 <3+> s
  s <5-> s
  s <5>8 <6> s4
  <7 5> <6 4> <3+>
  <3+> s s
  <3+> s s
  s2.
  s
  s
  s
  s
  s
  s2 <6->4
  <6>2 <6>4
  <6>2 <6->4
  <6> <7> <6>
  s2 <6>4
  <6>2 <6>4
  <6+>2.
  <5->
  s
  s
  s
  s
  s
  s
  s4 <5> <6>
  s2.
  s
  s4 <5> <6>
  s2.
  s
  <6 4>4 s2
  s1
  s
  s
  s2. <7>8 <6>
  s1
  s
  s
  s2. <4>8 <3+>
  s1
  s2 <7>4 <6>
  s1
  s
  s4 <6>8 <6+> s2
  <3+> <4+>
  s1
  s4. <4+>8 <6>4. <6+>8
  s2 <7>4 <5->
  s2 <7>4 <5->
  s2 <6 4>2
  s1
}

basse = \relative c' {
  \clef bass
  \ter
  a4 g f
  e d c8. [d16]
  e4 e,2
  a'4 g f
  e8. [d16] c8. [b16] a4
  g g' d
  f2 c4
  d e c
  d e f
  e e,2
  a'4 g f
  e fis gis
  a f d
  e2 e,4
  a b cis
  d e f
  e2 a,4
  d2 d,4
  g a bes
  a2 bis4
  cis d2
  a'4 g f
  e fis gis
  a f d
  e e,2
  a fis4
  g a2
  bes g4
  c4. bes8 a [g]
  f2 fis4
  g a2
  bes g4
  a2.
  d4 e f
  e fis gis
  a2 a,4
  d e f
  e fis gis
  a d, e
  c b a e' e,2
  a'4 g f
  e fis gis
  a f d
  e2 e,4
  a2 a'4
  g2 f4
  e2 d4
  cis2 a4
  d2 a4
  c f, bes
  a2.
  bes2 g4
  c2 cis4
  d e f
  c2 d4
  e2 e,4
  a2 a'4
  b2 g4
  c2 g4
  a2 e4
  f2 c4
  d2. e2 c4
  d e f
  e e,2
  a a'4
  b2 g4
  c2 g4
  a2 e4
  f2 e4
  d a2 d e4
  f2 e4
  d e f
  e2 c4
  b g b
  c2 g4
  c2 g4
  c d e
  f2 e4
  a2 e4
  a a, b
  c2 a4
  d e f
  e fis gis
  a f c
  d e e,
  a2.
  d2 r4
  d,2.
  d'
  d,
  d'
  d,
  d'
  a2 a'4
  g2 f4
  e2 d4
  c bes2
  a2 a4
  g2 f4
  e2 d4
  cis'2 d4
  a2.
  a
  a
  a2 ~ a8 [b]
  cis [a] d [d] bes [g]
  c4 a f
  d d'2
  c2.
  c8 [b a g] f [e]
  f4 d2
  e4 e' f
  d2.
  e4 e,2
  \bla
  a4 a'8 [e] a4 b8 [g]
  c4 e,8 [c] f [d] e [e,]
  a4 r4 r2
  r4 a'8 [e] a [g] f4
  e a8 [e] a4 b8 [g]
  c4 r2 b8 [g]
  c4 r4 r a8 [fis]
  b8 [a] g [fis] e [a,] b4
  e2 f4 d8 [g]
  e4 c8 [b] a2
  g4 g'8 [f] e4 d
  c b8 [a] gis2
  a8 [g] f [e] d4 d'
  e2 d
  c4 b8 [a] gis2
  a4. g8 f4. e8
  d4 e' fis gis
  a4. a,8 b4 cis
  d8 [e] f [d] e4 e,
  a1
}

\score {
  \new StaffGroup  <<
    \new Staff = "fluteun" <<\override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \fluteun >>
    \new Staff = "flutedeux" <<\override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \flutedeux >>
    \new Voice = "voix" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \voice >>
    \new Lyrics \lyricsto voix { \voicelyr }
    \new Staff <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \figuremode { \bassefig }
      \basse
    >>
  >>
}
