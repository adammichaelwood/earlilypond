%% vengezmoy.ly
%% Louis Nicolas Clérambault
%% Premier livre de cantates, n°4
%% Poliphème
%% Author : Benjamin Coudrin, 2013

%% DESSUS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ddessus = {
  \clef french
  \time 2/4
  \key g \minor
  \relative c' {
    r4 r8 ees16 [f]
    g8\segno [g16 g] ees8 [c]
    g'8 [ees16 d] c8 [c']
    bis [bes16 a] g8 [ees']
    d [d16 d] bis8 [g]
    ees'8 [ees16 d] c8 [g]
    aes [f'16 ees] d8 [a!]
    bis [d16 c] d8 [d,]
    ees [c'] d, [bis']
    c,2
    r
    r4 r8 aes'16 [bes]
    c8 [c16 bes] aes [g f ees]
    d4 r8 bis'16 [c]
    d8 [d16 d] bis8 [d]
    g,4 r8 r16 g
    c8. [d16] ees16 [d c bes]
    a8 [d16 c] d8 [g,]
    fis [d'16 c] d8 [d,]
    g [d'16 c] d8 [g,]
    f [d'16 c] bes [c a bes]
    g8 [g'] a, [fis']
    g4. r16 g,
    a [g a bis] a [bis a c]
    bis [a bis c] bis [c bis d]
    c [bis c d] c [d ees f]
  }
}

%% BARYTON %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Dbaryton = {
  \clef bass
  \time 2/4
  \key g \minor
  \relative c {
    \autoBeamOff
    r2*9
    r4 r8 ees16 f
    g8 g16 g ees8 c
    g'4 r16 ees16 f g
    aes8. g16 f [ees] d [c]
    bis8 \grace a8 (g) r d'16 [ees]
    f8. f16 f8 ees16 d
    ees8 r16 g c8. d16
    ees16 [d c bes] c [bes a g]
    (d'8) d, g bes
    a16 [g a bes] a [bes a c]
    bes [a bes c] bes [d c ees]
    d [c bes a] g [a f g]
    ees [d ees c] (d4)
    g,2
    r r r
  }
}

Dlyrbar = \lyricmode {
  Ven- gez moy d'un fa- tal vain- queur
  de- pit ja-
}

%% BASSE CONTINUE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Dbassefig = \figuremode {
  s2
  s
  <6>
  <_+>4 <6>
  <_+>2
  s
  <7 _->4 r8 <6 5>
  <_+>2
  <6>8 <6 5 _-> <4> <_+>
  s2
  s
  <6>
  <6 5 _->
  <_+>
  <5>
  s
  s4. <6 5>8
  <5/>2
  <_+>
  <6>4. <6 5>8
  <_+>4. <6>8
  <6> <6 5> <4> <_+>
  <_+>2
  s
  <6\\>
  <6>4 <7>8 <6>
}

Dbasse = {
  \clef bass
  \time 2/4
  \key g \minor
  \relative c, {
    c2
    c'4\segno r8 c16 [d]
    ees4 r8 ees16 [f]
    g8 [g16 g] ees8 [c]
    g'4 r8 g
    c4 r8 c,
    f4 r8 f,
    g4 r8 g16 [f]
    ees8 [f] g4
    c,2
    c'4 r8 c16 [d]
    ees8 [ees16 d] c [bes aes g]
    f4 r8 f
    g4 r8 g'
    bis,4 r8 bes
    c2
    c,4 r8 c'
    fis,4 r8 g
    d'4 r8 d16 [c]
    bes4 r8 c
    d4 g8 [f]
    ees [c] d [d,]
    g2
    r4 r8 r16 c
    d [c d ees] d [ees d f]
    ees [d c bes] aes4
  }
  \bar "|."
}
