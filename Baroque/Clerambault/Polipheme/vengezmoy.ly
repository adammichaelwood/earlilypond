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
  }
  \bar "|."
}
