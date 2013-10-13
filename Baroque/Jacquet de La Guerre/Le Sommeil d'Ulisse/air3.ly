%%  air3.ly
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

\version "2.14.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 15)

\paper {
  line-width    = 188\mm
  left-margin   = 10\mm
  top-margin    = 10\mm
  bottom-margin = 20\mm
  ragged-last-bottom = ##t 
  ragged-bottom = ##f
  annotate-spacing = ##f
  page-breaking = #ly:page-turn-breaking
  #(define page-breaking ly:page-turn-breaking)
}

\layout {
  \context {
    \RemoveEmptyStaffContext
    \override VerticalAxisGroup #'remove-first = ##t 
  }
}

\header {
  title = \markup \center-column {"Le Sommeil d'Ulisse, 3e Air"}% \concat {"Troisième cantate" }}
%  subtitle = \markup \center-column { "avec Simphonie" }
%  composer =  \markup \right-column { "Elisabeth Jacquet de La Guerre" \small "(1665-1729)" }
%  tagline = ""
  copyright = \markup { "Copyright : " \char ##x00A9 " 2013 Benjamin Coudrin. Copyleft : released under WTFPL License" }
}

\include "../../../3rdParty/Viole/ornements-viole.ly"

%% Ligne principale %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
voixun = {
  \clef french
  \key e \minor
  \time 6/8
  \relative c'' {
    % Simphonie
    r8^\markup{\italic{Violons et Flute}}_\markup{gracieusement et lourée}
    r b \vxmordant g4 fis8		| % 1
    g4 a8 b4 e8				| % 2
    \vxmordant dis8 [b fis']
    g [fis16 g e fis]			| % 3
    g8 [e g] fis16 [g fis e d c]	| % 4
    b [a b cis d b] e4. ~		| % 5
    e16 [d cis d e cis] fis4. ~		| % 6
    fis8 [dis e]
    fis [\vxmordant fis8. e16]		| % 7
    e4
    
    % Air
    \clef treble
    \autoBeamOff
    b8^\markup{\italic{3e Air}}
    \vxmordant g4 fis8
    g4 a8 b4 e8
    \vxmordant dis8 b fis' g [fis16 g e fis]
    (g8) [\vxmordant fis16 e d cis] b8 [g16 b a c]
    (b8) g a b c16 [b] a [g]
    \vxmordant fis4
    
    % Simphonie
    \clef french
    \autoBeamOn
    d'8 cis [e16 d cis b]	| % 
    cis8 [fis, cis']
    d16 [e d cis d b]		| % 
    \vxmordant cis4
    
    % Air
    \clef treble
    \autoBeamOff
    fis8 \vxmordant d4 cis8
    d4 e8 fis4 b,8
    ais8 fis cis' d [cis16 d b cis]
    (d8) b fis' g [fis16 g e g]
    (fis8) \grace e (d) \grace c (b) cis \vxmordant cis8. b16
    \break
    b4. r8 r4
    r2.
    r8 b8 c d4. ~
    d4 b8 c c b
    \vxmordant a4 a8 r d d
    e fis g \vxmordant fis4 g8
    g r r r4 r8
    r2.
    r8 b, b e4.~
    e4 g8 fis e d
    \vxmordant cis4 cis8 r d a
    b cis d \vxmordant cis4 d8
    d4 r8 r4 r8
    r2.
    r2.
    r8 r fis g4 fis8
    e4 dis8 e [fis] g
    fis b, r r4 r8
    r2.
    r8 r b b16 [a b c b c]
    (\vxmordant b8) \grace a g r r4 r8
    r8 r b b16 [a b cis d e]
    (\vxmordant cis8) dis e fis \vxmordant fis8. e16
    \vxmordant dis4 fis8 g4 fis8
    e4 \vxmordant dis8 e [fis] g
    fis b, r r4 r8
    r2.
    r8 r b b16 [a b c b c]
    (\vxmordant b8) \grace a (g) r r4 r8
    r8 r b e16 [d e fis e d]
    (cis) [b cis d e cis]
    (fis) [e fis g fis e]
    (\vxmordant dis8) b e fis \vxmordant fis8. e16
    e4 r8 r4 r8
    r2. r2. r2.
    r4 r8 b e fis
    g4 \grace fis8 (e) \vxmordant d4 c8
    \vxmordant b4 \grace a8 (g) b c d
    \vxmordant c4 b8 \vxmordant a4 g8
    d'4. ~ d ~
    d ~ d ~
    d b8 b c
    \grace b (a4) \grace {a16 ([b]} c8) \vxmordant b4 a8
    \vxmordant gis4 g8 r c d
    e4. r8 b8 c d4. r8 b e
    c d e \vxmordant c4 b16 [a]
    a4. r4 r8
    r2.
    r4 r8 c \vxmordant b a
    b4. a8 b16 [a] g [fis]
    \grace fis8 (g) \grace fis (e4) r8 b' cis
    d4. r8 cis dis
    e4. r8 e d
    cis dis e \vxmordant dis4 e8
    \vxmordant fis4 r8 r4 r8 r2.
  }
}

lyrun = \lyricmode {
  % Simphonie
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  U- lis- se que la gloire ap- pel- le
  tri- omphe __ _ en ces ai- ma- __ bles __ lieux
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  U- lis- se que la gloire ap- pel- le
  tri- om- __ phe tri- omphe __
  en ces ai- ma- bles lieux
  Il y voit fin- nir la que- rel- le
  qui trou- bla si long- tems les Dieux
  Il y voit fi- nir la que- rel- le
  qui trou- bla si long- tems les Dieux
  U- lis- se que la gloire ap- pel- le
  tri- om- __ phe,
  tri- omphe __ ren ces ai- ma- bles lieux;
  U- lis- se que la gloire ap- pel- le
  tri- om- __ phe.
  tri- omphe __ en ces ai- ma- bles lieux
  Lors- qu'un He- ros suit la sa- ges- se,
  et qu'il la prend pour son ap- pui __
  a son par- ti tout s'in- ter- res- se,
  tout a- git, tout com- bat, tout a- git
  tout com- bat pour lui
  a son par- ti tout s'in- ter- res- se
  tout a- git, tout com- bat
  tout a- git, tout com- bat pour lui;
}

%% Ligne secondaire  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
voixdeux = {
  \clef french
  \key e \minor
  \time 6/8
  \relative c'' {
    s2. s s s s s s s s s s s s s s s s s s
    r8 r d^\markup{fort} e16 [d e fis g e]
    fis8 b16 [a] g [fis e d] \vxmordant cis8. b16
    b8 r4 r8 g8^\markup{doux} [a]
    b4 g8 a [a g]
    \vxmordant fis4 fis8 r b [b]
    g [a b] \vxmordant a4 g8
    g [d'^\markup{fort} d] e16 [d e fis e8]
    \vxmordant fis [d g] g8. [a16 \vxmordant fis8]
    g8 [d^\markup{doux} d] g [g e]
    \vxmordant cis [a' a] a [g fis]
    \vxmordant e4 e8 r fis [fis]
    d [e fis] \vxmordant e4 d8
    d [fis^\markup{fort} g] a16 [g a b a b]
    a [g a b a b] a [g a b a b]
    a [g fis e fis8] g [\vxmordant e8. d16]
    d4 r8 r4 r8
    r2.
    r8 r fis g [a16 g fis g]
    \vxmordant e4 dis8 e16 [dis e fis g e]
    \vxmordant fis8 [b,] r r4 r8
    r8 r d g16 [fis g a fis a]
    r2. r2. r2. r2.
    r8 r fis^\markup{fort} g [a16 g fis g]
    \vxmordant e4 dis8 e16 [dis e fis g e]
    \vxmordant fis8 [b,] r r4 r8
    r4 d8^\markup{fort} g16 [fis g a fis a]
    g4 d8^\markup{doux} g16 [fis g a g fis]
    e [d e fis g e] a [g a b a g]
    fis8 [b \grace a (g) fis16 e] \vxmordant dis8. e16
    e4 g8^\markup{fort} a16 [g a b a8]
    b [g b] b [a16 g fis e]
    \vxmordant dis8 [b fis'] g16 [a g fis g e]
    a [b a g a fis] b8 [\vxmordant fis8. e16]
    e4._\markup{fin} g,8^\markup{doux} [g a]
    b4 g'8 \vxmordant fis4 e8
    \vxmordant d4 \grace c8 (b) g [a b]
    \vxmordant a4 g8 \vxmordant fis4 e8
    \vxmordant fis4 a8 b [g b]
    a [fis a] b [g b]
    \vxmordant a4. r8 d [e]
    \grace d (c4) \grace {c16 ([d]} e8) \vxmordant d4 c8
    \vxmordant b4 b8 r4 r8
    r e, [a] \vxmordant fis r r
    r fis [b] \vxmordant gis [g g]
    a4 a8 a4 \vxmordant gis8
    a8 [c^\markup{fort} d] e [fis gis]
    a [d,16 c b a] c8 [b8. a16]
    a4 r8 r4 r8
    g'8 [\vxmordant fis e] fis [g16 fis e dis]
    e8 [g, a] b8 r r
    r fis'4 \vxmordant e8 [e fis]
    g [g a] b [b b]
    e, [fis g] \vxmordant fis4 e8
    \vxmordant dis4 b8 \vxmordant g4 fis8
    g4 a8 b4 e8
  }
}

%% BASSE CONTINUE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
bassefig = \figuremode {
  s2 s8 <_+>
  s2.
  s2 s8 <_+>
  s4. <6>
  s <5>
  <_+> <5>
  <_+>4 <6>8 <6 5> <4> <7 _+>
  s2.
  s4 <6+>8 <6>4.
  <_+> s8 <_+>4
  s8 <6>4 s <7>8
  s <5> <6+> <6>4.
  <_+>4 <_->8 <5/>4.
  <_+> s
  <_+>4. s4 <_+>8
  s4 <6+>8 <6>4 <6+ 5>8
  <_+>4 s <7 _+>
  s2 <6 4>8 <7 _+>
  s4 <6 4+ 3>8 <6 5> <4> <_+>
  s4. <6+>
  <6>4 <6+ 5> <4>8 <_+>
  s2.
  <6>4. <6>
  s <6>
  s8 <6>4 <7>4.
  s2.
  s4. <6 4 3>4 <7>8
  s2.
  <_+>4 <5/>8 s <6 4> <7>
  <_+>4. <6>
  s8 <6+>4 <7 _+>4.
  s <_+>
  s <_+>
  s <6 5>8 <4> <7 _+>
  s4. <6>4 <7>8
  <6> <6 5> <_+> <6> <6+> s
  <_+>4. s4 <_+>8
  <6 4 3> <6 5> <_+> <6>4.
  <_+> <5>
  s <6>4 <7>8
  s4. <5/>
  <_+>8 <6+> <6> <6 5> <6 4 3> <7>
  <_+>4. s4 <_+>8
  <6 4 3>8 <6 5> <_+> <6> <6+> s
  <_+>4. s4 <_+>8
  <6 4 3>8 <6 5> <_+> <6>4.
  <_+> s4 <6 4 3>8
  s4. <6>4 <7>8
  s2.
  <_+>4. <5+>
  <_+>8 <6> <6 4 3> <6 5> <4> <_+>
  s4. <6+>
  <6> <7>8 <6 4 3>4
  <_+>4. s
  <6+> <6>8 <4> <_+>
  s2.
  s4. <6>
  s2.
  <5/>4. s4 <7 _+>8
  s4. <6 4>
  s <6 4>
  s s4 <6>8
  <5>4 <6>8 <6 _->4.
  <_+>4 <5/>8 s4 <6+>8
  <6> <5/> s4 <4+>8 <6>
  <3>4. <_+>
  s8 <6+> <6> <6 4>4 <7 _+>8
  s4 <6+>8 <6> <6 5> <_+>
  <6 4 3>4. <6 4>4 <_+>8
  s4. <7>8 <6 4> <3>
  s4 <7>8 <7> <6 4> <_+>
  s4. s4 <6 4+>8
  s8 <6> <5/> <_+>4.
  s4 <6+>8 <6> <5/>4
  <_+>8 <6+> s <_+>4.
  <_+> s s4 <6+>8 s4.
}

basse = {
  \clef bass
  \key e \minor
  \time 6/8
  \relative c {
    e,4. r8 r b'		| % 1
    e4 fis8 g [fis e]		| % 2
    b'4.^\segno e,8 b4			| % 3
    e4 e8 fis4 fis8		| % 4
    g [g fis]
    e16 [d e fis g e]		| % 5
    a8 [a g]
    fis16 [e fis g a fis]	| % 6
    b8 [b g] a [b b,]		| % 7
    e4. r8 r b			| % 8
    e4 fis8 g [fis e]		| % 9
    b'4. e,8 b4			| % 10
    e8 fis4 g d8		| % 11
    g,8 [e' fis]
    g [a16 g fis e]		| % 12
    b'8 [b, b'] ais [b b,]	| % 13
    fis'4 fis8 b,4 b8		| % 14
    fis4. r8 r fis'		| % 15
    b,4 cis8 d4 e8		| % 16
    fis4 fis8 b, fis4		| % 17
    b4 b'8 e, a4		| % 18
    d,8 [d] g [e] fis [fis,]	| % 19
    b [b' b,] cis [ais' cis,]	| % 20
    d4 e16 [fis g e] fis8 [fis,]	| %  21
    b4. \clef alto r8 g''8 [a]	| % 22
    b4 g8 a [a g]		| % 23
    d [\clef bass d, c] b4 b8	| % 24
    c8 [a g] d'4 d,8		| % 25
    g [g g] c [a a]		| % 26
    d [b e] e [c d]		| % 27
    g,4. \clef alto r8 e'' [e]	| % 28
    a4 cis,8 d [b g]		| % 29
    \clef bass a [a g] fis4 fis8	| % 30
    g [e d] a'4 a,8		| % 31
    d4. a			| % 32
    d a				| % 33
    d4 d8 g, a4			| % 34
    d4 d'8 b [a g]		| % 35
    c [a b] g [fis e]		| % 36
    b4 b8 e4 b8			| % 37
    c [a b] g16 [a g fis e8]	| % 38
    b'4 b8 e4 fis8		| % 39
    g4 g8 b, [b d]		| % 40
    g,4 g'8 gis4.		| % 41
    a8 [fis] g8 [a16 b] c8 [a]	| % 42
    b [a b] e,4 b'8		| % 43
    c8 [a b] g [fis e]		| % 44
    b'4 b,8 e4 b8		| % 45
    c [a b] g16 [a g fis e8]	| % 46
    b'4 b8 e4 fis8		| % 47
    g4 g8 b, [b d]		| % 48
    g,4 g'8^\markup{fort} e4 e8	| % 49
    a8 [a g] fis [fis fis]	| % 50
    b [g c] a [b b,]		| % 51
    e [e, e'] fis [fis, fis']	| % 52
    g [g, g'] c c4		| % 53
    b8 [b b,] e [e e]		| % 54
    fis [fis fis] g16 [a b8 b,]	| % 55
    <<{e [b g]  e4.}\\{\parenthesize e2._\markup{fin}}>>	| % 56
    e'4 e8 fis4 fis8		| % 56
    g4. g,4 g'8
    fis4 g8 d4.
    \clef alto r8^\markup{Violon} r8 <<{fis' g [e g]}\\{d d4.}>>
    <<{fis8 [d fis] g [e g]}\\{d4. d}>>
    <<{fis4.}\\{d4.}>> \clef bass g,8 [g e]
    fes4 c8 d4 g,8
    e' [fis gis] a [a, b]
    c [cis a] d [d c]
    b [b b] e [e e]
    a, [b c16 d] e4 e,8
    a8 [a b] c [d e]
    fes [f d] e [e e,]
    a [b c] d4 d8
    g4 c8 fis, [b b,]
    e [e fis] g4.
    r8 fis [gis] a4 r8
    r e [fis] g gis4
    a8 [fis e] b'4 e,8
    b4. r8 r b
    e4 fis8 g [fis e^\segno]
    \bar "||"
  }
}


%% CONDUCTEUR     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new StaffGroup  <<
    \new Voice = "vdeux" <<\override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \voixdeux >>
    \new Voice = "vun" <<\override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \voixun >>
    \new Lyrics \lyricsto vun { \lyrun }
    \new Staff <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \figuremode { \bassefig }
      \basse
    >>
 >>
}