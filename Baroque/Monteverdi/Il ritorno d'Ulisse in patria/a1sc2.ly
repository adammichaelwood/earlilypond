%%  a1sc2.ly
%%  Copyright (c) 2013 Benjamin Coudrin <benjamin.coudrin@gmail.com>
%%                All Rights Reserved
%%
%%  Copyleft :
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
  title = \markup \center-column {"Il ritorno d'Ulisse in patria" \concat {"Acte I, Scene II" }}
  subtitle = \markup \center-column { "Melantho, Eurimacus" }
  composer =  \markup \right-column { "Claudio Monteverdi" \small "(1567-1643)" }
%  tagline = ""
  copyright = \markup { "Copyright : " \char ##x00A9 " 2013 Benjamin Coudrin. Copyleft : released under WTFPL License" }
}

\include "../../../3rdParty/Viole/ornements-viole.ly"

%% Ligne principale %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
voixun = {
  \clef treble
  \key a \minor
  \time 3/4
  \relative c''' {
    % Simphonia
    a4 a4. g8
    a4 bes4. a8
    g [f] g [e] f [g]
    f [e] f [g] a4 ~
    a8 [g] a4.\trill f16 [g]
    f2 c4
    a b c
    d8 [e] f [d] f [a]
    g2 g8 [f]
    e [e] f [g] a [c]
    bes [c] bes [a] g [f]
    e4 f2
    f4 e2
    d2.\fermata
    
    % Melanto
    \clef treble
    \autoBeamOff
    d,4^\markup{MELANTO} e f
    g a e
    f2 g4
    a8 [g a b] c4
    a bes g
    f2.
    a4 c c
    c bes bes
    bes a a
    a g2 g4 f2
    \time 4/4 f2 (e)
    e2. e4
    d1
    \time 3/4 a'4 a gis
    a8 g! a b c4
    c b2
    a4 a f
    g4. f8 e4
    f c' a
    b4. a8 gis4
    a2 fis4
    g2 a8 [b]
    \time 4/4 b4 bes a2
    \time 3/4 g4 d' b
    c4. b8 a4
    b2 gis4
    a2 fis4
    g2 e'4
    c d4. c8
    b4 c2
    \time 4/4 r2 a
    bes4 (a) g (f)
    e1 
    
    % Sinphonia
    \autoBeamOn
    \time 3/4
    <<{\voiceOne d4}\\
      \new Voice = "sinfonia" {\voiceTwo a''4^\markup{Sinfonia}}>>
    \oneVoice a4. g8
    a4 bes4. a8
    g [f] g [e] f [g]
    f [e] f [g] a4 ~
    a8 [g] a4.\trill f16 [g]
    f2 c4
    a b c
    d8 [e] f [d] f [a]
    g2 g8 [f]
    e [e] f [g] a [c]
    bes [c] bes [a] g [f]
    e4 f2
    f4 e2
    d2.\fermata
    
    % Eurimaco
    \autoBeamOff
    \clef "G_8"
    \set Score.currentBarNumber = #111
    r4^\markup{EURIMACO} c, c
    b c b
    a d2
    b4 e2
    d2.
    c4 e e
    d e d
    c d2
    b4 c2
    b2.
    a4 a a
    b c gis
    a2.
    b
    \time 4/4
    c8. [d16 e8. f16] g4 e
    d1
    \time 3/4
    c2 r4
    r d e
    f g8 [f] e [d]
    c4 c d
    e f8 [e] d [c]
    b2.
    b
    \time 4/4
    c8. [d16 e8. f16] g4 e
    d1
    \time 3/4
    c4 e f
    g g r
    r d e
    f g8 [f] e [d]
    c4 c d
    e f8 [e] d [c]
    b2.
    r4 c c
    b c b
    a d2
    b4 e2
    d2.
    c4 r e8 e
    d4 e d
    c d2
    b4 c2
    b2.
    a8 c c c b4
    r8 a b [c] b4
    r8 a b16 [a b c] b4
    c16 [b c b] c [a b c] b8. a16
    \time 4/4
    a4. b8 c4 c
    b2 b
    (\time 6/8
    c8) e d e d8. c16
    d4 r8 r4 r8
    r b a b a8. g16
    a4 r8 r4 r8
    r8 f' e f e8. d16
    \time 4/4 e2. e4
    d2 c
    b1
    a\fermata
    
    % Melanto
    \time 6/4
    \clef treble
    r2^\markup{MELANTO} a'4 f2 e4
    f2 g4 a2.
    a r4 a b
    c2. r4 c d
    e1.~
    e2.~e4 d c
    \once \override Staff.TimeSignature #'stencil = ##f
    \time 3/4
    c2 b4
    \time 4/4
    c4 c r d8 c
    d2 r4 c8 b
    c4 c r b8 a
    b2 r4 a8 g
    a2 r4 d4
    gis,2 c8 (gis4.)
    a2. gis4
    (\time 3/4 a) c4. c8
    b4 b8 a b g
    a4.
    g8 a f
    g2.
    r4 f'4. f8
    e4 e8 d e c
    d4. c8 d b
    \time 4/4 c4. c8 b4 b
    a1
    gis4 gis8 b e,4 e
    r cis'8 e a,4 a
    r2 b4 d
    gis, a8 a a4. gis8
    (a1\fermata)
    
    % Eurimaco
    \clef "G_8"
    r4^\markup{EURIMACO} e c8 c16 b b8. b16
    a4 a8 g f4. e8
    g2. a4
    d,2 c
    e16 e e4 f16 f g8 g16 g g g g g
    a4 b8 b c2
    gis4 a2 gis4
    \once \override Staff.TimeSignature #'stencil = ##f
    \time 2/4
    a2\fermata
    
    % Melanto
    \clef treble
    r8^\markup{MELANTO} f' f f
    \once \override Staff.TimeSignature #'stencil = ##f
    \time 4/4
    e4 d e2
    d8 d d d e16 [d e f] g [f g e]
    f [e d e] f [e f g] a [g f g] a [b c a] \break
    bes [a g a] bes [a bes c] d [c bes c] d [e f d]
    e4 f e2
    d2 r
    r1
    r2 r8 a a a
    gis4 a a gis
    (a2) r8 f f f
    e4 f f e
    (f8) a a a bes16 [a bes c] d [c d bes]
    c [b a b] c [d e c] d [c d e] f [e f g]
    cis,4 d d cis
    (d2) r
    r1
    r4 r8 d c8. bes16 bes8. a16
    a4. g8 f4 f
    e1
    d4 r8 f' e8. d16 d8. c16
    c4 r8 c bes8. a16 a4
    r2 r8 bes a8. g16
    g2 r4 f 
    e f e2
    d r2
    r1
    r1
    r1
    r1
    r4^\markup{MELANTO} d'8 d d4 b8 bes
    bes4 bes8 a a4 a
    g1
    fis4 fis r8 d' bes a
    bes bes bes2 a8. g16
    g2~ g8 g g g
    g4 f e2
    d1
    
    \clef "G_8"
    r4 r16^\markup{EURIMACO} e e e e4. e8
    d4 (d2 c8) r
    r4 b8 b16 b c4 c
    r16 a a a b8. cis16 d4 d8 d
    (e2 f4) r
    gis,4. a8 a4. g8
    (a1\fermata)
    
    \clef treble
    \time 6/4
    r4^\markup{MELANTO} f' d e f r
    g4. g8 d4 e e r
    
    \clef "G_8"
    r4^\markup{EURIMACO} d b c c r
    d4. d8 gis,4 a2.
    
    \clef treble
    a'4.^\markup{MELANTO} bes8 f4 g a r
    
    \clef "G_8"
    d,4.^ \markup{EURIMACO} e8 b4 cis a r
    
    \clef "treble"
    d4^\markup{MELANTO} e f g a a
    a2 gis4 a a r
    
    \clef "G_8"
    f4^\markup{EURIMACO} e d c bes a
    a2 gis4 a a r
    \break
    
    \clef treble
    f'4 g4. g8 a4. a8 g8. f16
    g4 r r r2.
    d'4 g,4. f8 a2.
    d,4 d d d2 d4
    r1.
    d4 d d d2. ~
    d1. ~
    d1.
    \once \override Staff.TimeSignature #'stencil = ##f
    \time 3/4
    e4 e2
    \time 4/4
    d4 d8. d16 a'2
    \break
    \once \override Staff.TimeSignature #'stencil = ##f
    \time 4/1
    \tempo Presto
    a\longa^\markup{MELANTO}
    bes
    \once \override Staff.TimeSignature #'stencil = ##f
    \time 4/4
    a1
    \tempo Tardo
    a2 r4 g8 g
    g2 r4 f8 f
    f4 (e4.) d8 d d
    d4 c b b
    
    \clef "G_8"
    r4^\markup{EURIMACO} a8. a16 e'2
    \once \override Staff.TimeSignature #'stencil = ##f
    \time 4/1
    \tempo "[Presto]"
    e\longa
    d
    \once \override Staff.TimeSignature #'stencil = ##f
    \time 4/4
    c8 c bes bes bes4 r
    r a8 a a4 r
    r g8 g g4 f8 f
    f4 f8 f f4. e8
    e1
    d4. d'8 d8. d16 c8. c16
    \break
    
    % Melanto
    \clef "treble"
    r4^\markup{MELANTO} r8 a' a8. a16 g8. g16
    e8 e e e g4 a8 a
    b b r g b8. b16 a8. a16
    fis8 fis fis fis a4 b8 b
    c c r a c8. c16 b8. b16
    g8 g a a a2
    g4 f e2
    d1\fermata
    \break
    \time 6/4 r4 f d e f r
    g4. g8 d4 e e r
    
    % Eurimaco
    \clef "G_8"
    r4 d b c c r
    d4.^\markup{EURIMACO} d8 gis,4 a2.
    
    % Melanto
    \clef treble
    a'4.^\markup{MELANTO} bes8 f4 g a r
    
    % Eurimaco
    \clef "G_8"
    d,4.^\markup{EURIMACO} e8 b4 cis a r
    
    % Melanto
    \clef "treble"
    d4^\markup{MELANTO} e f g a a
    a2 gis4 a a r
    
    % Eurimaco
    \clef "G_8"
    f4^\markup{EURIMACO} e d c bes a
    a2 gis4 a a r
    
    % Duo
    \clef treble
    <<{f'4^\markup{MELANTO} g4. g8 a4 }\\{d,_\markup{EURIMACO} e4. e8 f4}>>
    r8 a g8. f16
    g4 r8
    \clef "G_8"
    e8^\markup{EURIMACO} d8. c16 d4 r r
    \clef treble
    <<{d'4^\markup{MELANTO} g,4. g8 a2.}\\{g4_\markup{EURIMACO} d4. d8 e2.}>>
    d4 d d d2 d4
    \clef "G_8"
    d4^\markup{EURIMACO} d d d2 d4
    \clef treble
    <<{d4^\markup{MELANTO} d4 d4 d2.~d1.~d e4 e2 d2.\fermata}\\{d4_\markup{EURIMACO} d4 d4 d2.~d1.~d d4 d4. cis8 (d2.)}>>
    \bar "|."
  }
}

lyrun = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Du- ri~e pe- no- si son gl'a- mo- ro- __ si fie- ri de- sir;
  ma~al- fin son ca- ri, son ca- ri, se pri- ma~a- ma- ri,
  gl'a- spri mar- tir.
  Ché s'ar- de~un cor, è d'al- le- grez- za~un fuo- co,
  né mai per- de~in a- mor, né mai per- de~in a- mor
  chi com- __ _ _ pie~il gio- co, né mai per- de~in a- mor,
  mai, mai, mai, mai, né mai per- de~in a- mor
  chi com- pie~il gio- co
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Bel- la, bel- la Me- lan- to, bel- la, bel- la
  bel- la, bel- la Me- lan- to mi- a, mi- a,
  gra- zi- o- sa Me- lan- to,
  il- __ _ tuo can- to
  il tuo can- __ _ _ _ _ to~è~un in- can- __ _ _ to;
  il- __ _ tuo vol- to
  il tuo vol- to, il tuo vol- __ _ _ _ _ to~è ma- gi- __ _ a,
  bel- la bel- la Me- lan- to, bel- la, bel- la,
  bel- la bel- la Me- lan- to mi- a, mi- a!
  E tut- to lac- __ _ _ _ _ _ _ _ _ _ cio~in te
  cio ch'al- tri~am- ma- ga, __
  cio che lac- cio non è,
  cio che lac- cio non è,
  cio che lac- cio non è fa tut- to pia- ga.
  Vez- zo- so gar- ru- let- to, oh, __ _ _
  oh, __ _ _ co- me ben tu sa- i
  in- gem- mar le bel- lez- ze
  il- lus- trar a tuo pro
  d'un vol- to~i- ra- i
  Lie- to, lie- to vez- zeg- gia pur,
  vez- zeg- gia pur, lie- to
  lie- to vez- zeg- gia pur,
  vez- zeg- gia pur con glo- rie mi- e
  le tue dol- ci, le tue dol- ci
  le tue dol- ci bu- gi- e __
  Bu- gi- a sa- reb- be s'i- o
  lo- dan- do non t'a- mas- si
  ché~il ne- gar d'a- do- rar con- fes- sa- ta
  de- i- tà è bu- gi- a d'em- pie- ta.
  De' no- stri~a- mor con- cor- di
  sia pur la fiam __ _ _ _ _ _ _ _ _ _ _
  ma~ac- ce- sa
  de' no- stri~a- mor con- cor- di __
  de' no- stri~a- mor con- cor- di __
  sia pur la fiam __ _ _ _ _ _ _
  ma~ac- ce- sa __
  ché~a- ma- to~il non a- mar ar- re- ca~of- fe- sa,
  ché~a- ma- to~il non a- mar, il non a- mar,
  il non a- mar ar- re- ca~of- fe- sa
  S'io non t'a- mo, cor mi- o, cor mi- o
  cor mi- o, che sia di ge- lo
  l'al- ma ch'ho~in sen __
  a' tuoi be- gl'~oc- chi~a- van- te.
  
  % Eurimaco
  Se~in a- do- rar- ti~il cor __
  non ho co- stan- te,
  non mi sia stan- za~il mon- do o __
  tet- to~il cie- lo __
  
  % Melanto
  Dol- ce, dol- ce, dol- ce mia vi- ta,
  
  % Eurimaco
  Lie- to, lie- to, lie- to mio ben,
  
  % Melanto
  lie- to mio be- ne,
  
  % Eurimaco
  dol- ce mia vi- ta,
  
 % Melanto
  dol- ce mia vi- ta, mia vi- ta se- i;
  
  % Eurimaco
  lie- to mio be- ne, mio ben sa- ra- i;
  
  % Melanto
  no- do si bel, si bel, si bel,
  no- do si bel non si di- sciol- ga,
  no si di- sciol- __ ga ma- i
  Co- me, oh,
  \override LyricText #'self-alignment-X = #LEFT
  come~il~desio~m'invoglia,Eu-
  rimaco,mia~vita,senza~fren,senza
  morso,dar~nei~tuo
  \override LyricText #'self-alignment-X = #CENTER
  sen, nel tuo sen,
  nel tuo sen __
  al- le mie gio- ie~il cor- so!
  
  % Eurimaco
  Co- me, oh,
  \override LyricText #'self-alignment-X = #LEFT
  come~colentieri~cangerei~questa~reggia~in~un~de-
  serto,dove~occhio~curi-
  \override LyricText #'self-alignment-X = #CENTER
  o- so a ve- der,
  a ve- der,
  a ve- der non giun- ges- se
  i no- stri~er- ro- ri;
  ché~ad un fo- co- so
  
  % Melanto
  Ché~ad un fo- co- so pet- to
  il ri- spet- to~è di- spet- to,
  ché~ad un fo- co- so pet- to
  il ri- spet- to~è di- spet- to,
  ché~ad un fo- co- so pet- to il ri- spet- to~è
  di- spet- to.
  Dol- ce, dol- ce, dol- ce mia vi- ta,
  
  %Eurimaco
  Lie- to, lie- to,
  lie- to mio ben,
  
  % Melanto
  lie- to mio be- ne
  
  %Eurimaco
  dol- ce mia vi- ta
  
  % Melanto
  dol- ce mia vi- tan mia vi- ta se- i;
  
  % Eurimaco
  lie- to mio be- ne, mio ben sa- ra- i;
  
  % Duo
  % no- do si bel
  
  % Melanto
  si bel, si bel,
  
  % Eurimaco
  no- do si bel
  
  % Duo
  % no- do si bel
  
  % Melanto
  non si di- sciol- ga
  
  % Eurimaco
  non si di- sciol- ga,
  
  % Duo
  % non si- di- sciol- __ ga ma- i __
}

%% Ligne secondaire  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
voixdeux = {
  \clef alto
  \key a \minor
  \time 3/4
  \relative c' {
    s2. s2. s2. s2. s2. s2. s2. s2. s2. s2.
    s2. s2. s2. s2. s2. s2. s2. s2. s2. s2.
    s2. s2. s2. s2. s2.
    \time 4/4 s1 s1 s1 \time 3/4 
    s2. s2. s2. s2. s2. s2. s2. s2. s2.
    \time 4/4 s1 \time 3/4
    s2. s2. s2. s2. s2. s2. s2.
    \time 4/4 s1 s1 s1
    \time 3/4
    s2. s2. s2. s2. s2. s2. s2. s2. s2. s2.
    s2. s2. s2. s2. s2. s2. s2. s2. s2. s2.
    s2. s2. s2. s2. s2. s2. s2. s2.
    \time 4/4 s1 s1 \time 3/4
    s2. s2. s2. s2. s2. s2. s2.
    \time 4/4 s1 s1 \time 3/4
    s2. s2. s2. s2. s2. s2. s2. s2. s2. s2.
    s2. s2. s2. s2. s2. s2. s2. s2. s2. s2. s2.
    \time 4/4 s1 s1 \time 6/8
    s2. s2. s2. s2. s2.
    \time 4/4 s1 s1 s1 s1 \time 6/4
    s1. s1. s1. s1. s1. s1. s2.
    \time 4/4
    s1 s1 s1 s1 s1 s1 s1
    \time 3/4
    s2. s2. s2. s2. s2. s2. s2.
    \time 4/4
    s1 s1 s1 s1 s1 s1 s1
    s1 s1 s1 s1 s1 s1 s1
    s1
    s1 s1 s1
    
    \clef "G_8"
    \autoBeamOff
    r2 r8^\markup{EURIMACO} d d d
    cis4 d d cis
    (d8) d, d d e16 [d e f] g [f g e]
    f [e d e] f [e f g] a [g f g] a [b c a]
    b [a g a] b [c d b] c [b a b] c [b c d]
    e4 c b2
    a2 r8 a a a
    g4 bes g2
    f8 f f f g16 [f g a] bes [a bes g]
    a [g f g] a [b c a] bes [a bes c] d [c d e]
    f8 [e g] f e2
    d4 r8 d c8. bes16 bes8. a16
    a4. g8 f4 f
    f2 e
    (f) r
    r4 r8 bes a8. g16 g8. f16
    f4 r8 d' c8. bes16 bes8. a16
    a4 r8 a g8. f16 f4
    r8 f' e8. d16 d4 c
    b1
    cis4 d2 cis4
    (d) r16 d d d d4. a8
    \break
    b4 b8 b c2
    r8 a b c gis4 gis8 c
    c4. b8 b2
    a1\fermata
    r
    r
    r
    r
    r
    r
    r
    r
    
    r
    r
    r
    r
    r
    r
    r
    
    r1.
    r
    r
    r
    r
    r
    r
    r
    r
    r
    
    d4 e4. e8 f4 r r
    r r8 e d8. c16 d4 r r
    g d4. d8 e2.
    r1.
    d4 d d d2 d4
    d d d d2. ~
    d1.~
    d1.
    
    \once \override Staff.TimeSignature #'stencil = ##f
    \time 3/4
    d4 d4. cis8
    (\time 4/4
    d2) r
    r\longa
    r
    r1
    r
    r
    r
    r
    r
    r\longa
    r
    r1
    r
    r
    r
    r
    r
    
    f,8^\markup{EURIMACO} f f f f4 g8 g
    c c r c e8. e16 d8. d16
    g,8 g g g g4 a8 a
    d d r d f8. f16 e8. e16
    a,8 a r f a8. a16 g8. g16
    c8 c f, f f2
    g4 g a2
    d,1\fermata
    
    r1. r1.
    r1.
    
    r1. r r r r r r r r
  }
}

lyrdeux = \lyricmode {
  De' no- stri~a- mor con- cor- di __
  sia pur la fiam __ _ _ _ _ _ _ _ _ _ _
  ma~ac- ce- sa de' no- stri~a- mor con- cor- di
  sia pur la fiam __ _ _ _ _ _ _
  ma~ac- ce- sa
  ché~a- ma- to~il non a- mar
  ar- re- ca~of- fe- sa __
  ché~a- ma- to~il non a- mar
  ché~a- ma- to~il non a- mar
  il non a- mar il non a- mar
  ar- re- ca~of- fe- sa
  Né con ra- gion s'of- fen- de co- lui
  che per of- fe- se a- mor ti ren- de.
  
  no- do si bel, no- do si bel, no- do si bel
  non si di- sciol- ga, non si di- sciol- __ ga ma- i __
  
  pet- to il ri- spet- to~è di- spet- to,
  ché~ad un fo- co- so pet- to il ri- spet- to~è
  di- spet- to ché~ad un fo- co- so pet- to
  ché~ad un fo- co- so pet- to il ri- spet- to~è
  di- spet- to.
}

%% BASSE CONTINUE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
bassefig = \figuremode {
  s4 <6> <7>8 <6>
  s4 <_-> s
  s2.
  s4. <3>8 <6>4
  <7>8 <6> <4>4 <3>
  s2.
  s4 <5> <6>
  s2.
  s2.
  <_!>4 <_-> s
  <_->2 s4
  <_+> <7 _-> s
  \bassFigureExtendersOn
  <6 4> <5 4> <_+>
  \bassFigureExtendersOff
  <_+>2.
  s2.
  s2.
  s2.
  s2.
  s2 <6>4
  s2.
  s2 <6>4
  <7> <6-> s
  <7-> <6> s
  <7> <6> s
  <7> <6> s
  <_->1
  <4>2 <_+>
  <_+>1
  <_!>4 <6> <6+>
  s2.
  <6>4 <4> <_+>
  <_+> s s
  <6> s s
  s2.
  <6 5>4 <_+> s
  <6> <_+> s
  <6> s s
  <6/> <_-> <_+>2
  <_!>2.
  <6>4 s4. <6>8
  <6>4 <_+> s
  <6> <_+> s
  <6> s s
  s <6> <3>
  s2.
  s1
  <_->
  <_+>
  s4 <6> <7>8 <6>
  s4 <_-> s
  s2.
  s4. <3>8 <6>4
  <7>8 <6> <4>4 <3>
  s2.
  s4 <5> <6>
  s2.
  s2.
  <_!>4 <_-> s
  <_->2 s4
  <_+> <7 _-> s
  \bassFigureExtendersOn
  <6 4> <5 4> <_+>
  \bassFigureExtendersOff
  <_+>2.
  s
  s4 <6> s
  s2.
  <5>4 s s
  s2.
  s
  s4 <6> s
  s <6> s
  <_+> s s
  <4> s <_+>
  s2.
  s4 <6> <_+>
  <7>2 <6>4
  <_+>2.
  s2 <6>
  <4> <3>
  s4 <6>2
  s <6>4
  s <6>2
  s4 <6> <6>
  s2.
  <4>2.
  <_+>
  s2 <6>
  <4> <3>
  s2.
  s4 <6> s
  s s <6>
  s <6> s
  s <6> <6>
  s2.
  <4>
  <_+>
  s4 <6> s
  s2.
  s
  s
  s
  s4 <6> s
  s2.
  <_+>
  <4>2 <_+>4
  s2 <6>4
  s2 <6>4
  s2 <6>4
  s2 <6>4
  s2. <6>4
  <7>2 <6>
  s4 <6>8 s <6> s
  <6> s <6> s <6> s
  s s <6> s <6>8. <3>16
  s8 <6> <3> <6> <3> s
  s s <6> s <6>8. <6>16
  s1
  <6>2 <5>4 <6+>
  <_+>1
  <_+>
  <_!>1 s4 <_+>
  s1.
  s2 <3> s
  s <3> s
  s4 <6>2 <6> <3>4
  s2 <3> s
  <4>2 <3>4
  s1
  <5+>2 <6>
  s <6>
  s <6>
  s <6>
  <_+> s
  s8 <6>4. <_+>2
  <_+>4 <_!>2
  s2.
  s
  <5>
  s
  s
  <6>
  s2 <6>
  <7> <6>
  <_+> s4 <6>
  <_+>2 s4 <6>
  <_+>1
  <_+>4 \bassFigureExtendersOn 
  <6 4> <5 4> \bassFigureExtendersOff
  <_+>
  <_+>1
  s2 <_!>4 <6>
  s4. <6>8 <5>4 <6>
  s <6>8 <3> s2
  s1
  s4. <6>8 <6>2
  s1
  <6>2 <4>4 <_+>
  <_+>2
  s
  <6> <5 2>
  s <5>
  s s
  <_-> s
  <_+>4 \bassFigureExtendersOn 
  <6 4> <5 4> \bassFigureExtendersOff
  <_+>
  s1
  s
  <_!>
  <_+>4  \bassFigureExtendersOn 
  <6 4> <5 4> \bassFigureExtendersOff
  <_+>
  s1
  s2 <4>4 <3>
  s2 <_->
  s1
  <_+>4 <_-> <4> <_+>
  <_!> s <6> s
  <6>4. <_->8 s2
  <4- 2> <6>
  s4. <6>8 s2
  <4 2> <6>
  s2 <6>4 <6>
  <6>2 <_->
  s1
  s
  <_+>4  \bassFigureExtendersOn 
  <6 4> <5 4> \bassFigureExtendersOff
  <_+>
  <_+>1
  s
  s2 <_+>
  s <_+>
  <_+>1
  s
  <6->2 <6>
  <6>1
  <_+>
  <_->
  s2 <6>
  <_+>4  \bassFigureExtendersOn 
  <6 4> <5 4> \bassFigureExtendersOff
  <_+>
  <_+>1
  s
  <6>
  s
  <_+>
  s
  <_+>4  \bassFigureExtendersOn 
  <6 4> <5 4> \bassFigureExtendersOff
  <_+>
  <_+>1
  s2. <5>4 <6>2
  <6> <6+>4 <_+>4. <3>8 <6>4
  s2. <5>4 <5>2
  <7> <6+>4 <_+>4. <3>8 <6>4
  s1 <5>2
  <7> <6+>4 <_+>4. <3>8 <6>4
  s2. <5>4 <5>2
  <7 5>2 <6+ 5!>4 <_+>4. <3>8 <6>4
  s2. <5>4 <5>2
  <7 5>2 <6+ 5!>4 <_+>2.
  s1.
  s2. <5>
  <6 5> <_+>
  <6>4 <_-> <3> <6> <6 5 _-> <6- 4>
  <_+> <3> <6> <_-> <6+> <6>
  <6> <_-> <6+> <6> <6 5 _-> <6- 4>
  <_+> <3> <6> <_-> <_+> <3>
  <6> <_-> <6+> <6> <6>2
  <_->4 <4> <_+>
  <_+>1
  s\longa
  <_->
  s1
  <7>2. <6>4
  <7>2. <6>4
  <7 _->4 <6> <7> <6>
  <_+>4  \bassFigureExtendersOn 
  <6 4> <5 4> \bassFigureExtendersOff
  <_+>
  <_+>1
  s\longa
  s
  s1
  <_->
  s2 <6>
  <5> <6>
  <7+ 4 2>1
  s
  s
  s2. <_+>4
  s2. <_+>4
  <_+>2. <_+>4
  s1
  s1
  s2 <4>4 <_+>
  <_+>1
  s2. <5>4 <6>2
  <6>2 <6+>4 <_+>4. <3>8 <6>4
  s2. <5>4 <5>2
  <7>2 <6+>4 <_+>4. <3>8 <6>4
  s1 <5>2
  <7> <6+>4 <_+>4. <3>8 <6>4
  s1 <5>4 <5>
  <7 5>2 <6+ 5!>4 <_+>4. <3>8 <6>4
  s1 <5>4 <5>
  <7 5>2 <6+ 5!>4 <_+>2.
  s1.
  s2. <5>
  <6 5> <_+>
  <6>4 <_-> <3> <6> <6 5 _-> <6- 4>
  <_+> <3> <6> <_-> <6+> <6>
  <6> <_-> <6+> <6> <6 5> <6- 4>
  <_+> <3> <6> <_-> <_+> <3>
  <6> <_-> <6+> <6> <6>2
  <_->4 <4> <_+> <_+>
}

basse = {
  \clef bass
  \key a \minor
  \time 3/4
  \relative c {
    d4 c bes
    a g f
    c'2 c4
    d4. e8 f4
    bes, c2
    f,2 f4
    f' e e
    d2 d4
    e2 e4
    a g f
    g2 g4
    a g2
    a2.
    d, \bar "||"
    d
    c
    bes
    a2 f4
    f'2 e4 f2.
    f'4 f e
    d2.
    c
    bes
    a
    g1
    a
    d,
    d4 c b
    a4. g8 a [b]
    c [d] e2
    a, d'4
    b c2
    f, f'4
    d e4. d8
    cis4 d2
    b4 c!2
    a4 g d'2
    g,2 g4
    e f4. e8
    d4 e2
    cis4 d2
    b4 c c'
    a b4. a8
    g4 a2
    f1
    g
    a
    d,4 c bes
    a g f
    c'2 c4
    d4. e8 f4
    bes,4 c2
    f,2 f4
    f' e e
    d2 d4
    e2 e4
    a g f
    g2 g4
    a g2
    a2.
    d,2.\fermata
    \bar "||"
    a'2 a4
    g e e
    f d2
    e4 c2
    g'2.
    c,4 c c
    g' e e
    f d2
    e4 d2
    e2.
    a,4 a' a
    g e e
    f2.
    e
    c2 e
    g1
    c,4 e f
    g f e
    d e2
    f4 e d
    c d2
    e2. ~
    e
    c2 e
    g1
    c,2.
    c4 e f
    g f e
    d e2
    f4 e d
    c d2
    e2. ~
    e4 a a
    g e2
    f4 d2
    e4 c2
    g'2.
    c,4 r c8 [c]
    g'4 e e
    f d2
    e4 d2
    e2.
    a2 gis4
    a2 gis4
    a2 gis4
    a2 gis4
    a4. g8 f4 e
    d1
    c8 [c' b] c [b8. a16]
    b8 [a g] a [g8. f16]
    g8 [g f] g [f8. e16]
    f8 [e d] e [d8. c16]
    d8 [d c] d [c8. b16]
    c2. c4
    b2 a
    e'1
    a,\fermata
    \bar "||"
    r2 a'4 d,2 a4
    d2 c4 f2.~
    f4 f g a2.
    r4 a b c2. ~
    c4 e, f g c, d
    e a, b c f,2
    g2.
    c'2 a
    b gis
    a fis
    g e
    f d
    e1
    f8 c4. e2
    a,4 a'2
    g2.
    r4 f4. f8
    e4 e8 [d] e [c]
    d4. c8 d [b]
    c4 c'4. c8
    b4 b8 [a] b [g]
    a2 g
    f1
    e2 r4 cis8 [e]
    a,2 r4 fis'8 [a]
    d,1
    e
    a,\fermata
    \bar "||"
    r2 a'4 g
    f4. e8 d2
    c4 b8 [a] g4 f
    g2 c
    c4. d8 e2
    f4 g a2
    f e
    a,\fermata
    d'
    cis4 d d cis
    d2 c!
    bes a
    g d
    a'1
    d,2 c
    f a
    g a
    e1
    a2 f
    c4 bes c2
    f g
    a bes
    a4 g a2
    d,4 d' c bes
    a4. g8 f2
    f e
    f4. e8 d2~
    d cis
    d4 d' c bes
    a2 g4 f~
    f c d2
    g1
    a
    d,
    g2 c,
    f e
    d e
    a1\fermata
    d, ~
    d2 c
    cis1
    d
    g
    c2 bes
    a1
    d,\fermata
    a'
    gis1
    (gis2) a
    a d,
    (d1)
    e
    a\fermata
    d2. c4 a2
    bes2 b4 a4. b8 cis4
    d2. c4 a2
    bes b4 a4. b8 cis4
    d2. c4 a2
    bes b4 a4. b8 cis4
    d2 d4 c a2
    bes b4 a4. b8 cis4
    d2 d4 c a2
    bes b4 a2.
    d4 c4. c8 f,2.
    c' bes
    bes4 bes4. bes8 a2.
    fis4 g a bes c d
    d, e fis g a bes
    fis g a bes c d
    d, e fis g d e
    fis g a bes fis!2
    g4 a2
    d,1
    f'\longa
    g,
    f1
    bes,
    a
    g2 f
    e1
    a
    c'\longa
    bes
    a1
    g
    f2 e
    d1
    d
    d2 d'4 c
    f, f2 g4
    c2 e4 d
    g,4 g2 a4
    d2 f!4 e
    a,4 r8 f a4 g
    c f, f2
    g a
    d,1\fermata
    
    d'2. c4 a2
    bes b4 a4. b8 cis4
    d2. c4 a2
    bes2 b4 a4. b8 cis4
    d2. c4 a2
    bes b4 a4. b8 cis4
    d2 d4 c a2
    bes2 b4 a4. b8 cis4
    d2 d4 c a2
    bes2 b4 a2.
    d4 c4. c8 f,2.
    c' bes
    bes4 bes4. bes8 a2.
    fis4 g a bes c d
    d, e fis g a bes
    fis g a bes c d
    d, e fis g d e
    fis g a bes fis!2
    g4 a2 d,2.\fermata
  }
}


%% CONDUCTEUR     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new StaffGroup  <<
    \new Voice = "vun" <<\override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'default) \voixun >>
    \new Lyrics \lyricsto vun { \lyrun }
    \new Voice = "vdeux" <<\override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'default) \voixdeux >>
    \new Lyrics \lyricsto vdeux { \lyrdeux }
    \new Staff <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'default)
      \figuremode { \bassefig }
      \basse
    >>
 >>
}