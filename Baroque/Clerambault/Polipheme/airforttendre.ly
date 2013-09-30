%% airforttendre.ly
%% Louis Nicolas Clérambault
%% Premier livre de cantates, n°4
%% Poliphème
%% Author : Benjamin Coudrin, 2013

%% DESSUS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Bdessus = {
  \clef french
  \time 3/2
  \key d \minor
  \relative c'' {
    % Air fort tendre
    d1 d4. ees8
    a,2. a4 \grace a8 (bes4.) c8
    bes2\stopped \grace a8 (g2.) d'4
    d2. (cis4\stopped bis4.) cis8
    \grace c8 (d1) r4 a 
    bes4. (c8) d4. e8 f4 (d8) [g]
    fis2 ~ f8 [g (f g) g4.\stopped (fis16 [g])
    a4. (g8) fis4. (e8) d4. (c8)
    bes4.\stopped a8 bes2 (a4.\stopped) g8
    g1 r2
    r1.\segno
    d'1 d4. ees8
    a,2. a4 bes4. c8
    bes2\stopped \grace a8 (g2) r
    r g'4. f8 ees4.\mordent d8
    ees4. (f8) ees4. (d8) c4. (bes8)
    a2\stopped f'4. ees8 d4.\stopped c8
  }
}

%% BARYTON %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Bbaryton = {
  \clef bass
  \time 3/2
  \key d \minor
  \relative c' {
    \autoBeamOff
    r1. r r r r r r r r
    d1 d4. ees8
    a,2.\segno a4 bes4. c8
    bes2\stopped \grace a8 (g2) r4 g
    g2. (fis8) [e] fis2
    g2. f4 ees4. d8
    c2. c4 g' g
    c2 c4. bes8 a4.\stopped g8
    f1 f4 f
    \bar "|." \break
  }
}

Blyrbar = \lyricmode {
  Ah Ren- dez moy vo- tre Pré- sence _
  ve- nez Cal- mer la vi- o- len- ce
  de mes feux, et de mes tour- ments,
  de mes
}

%% BASSE CONTINUE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Bbassefig = \figuremode {
  s1.
  <2>2 <5/>1
  s1.
  <7>2 <6> s
  <6>1.
  s2 <6> <_->4. <6>8
  <_+>1 <6 4>2
  <3> s <6>
  s4. <6 5 _->8 <4>2 <_+>
  s1.
  <2>2 <5/>1
  s <6>2
  <6 5 _-> <4> s
  s2. <4+>4 <6>4. <6>8
  <_->1 <6- 4>4 <7 _+>
  <_->1.
  <7->1 <6 4>4 <7- 3>
}

Bbasse = {
  \clef bass
  \time 3/2
  \key d \minor
  \relative c {
    \times 3/2 {g1 ~} 
    g2 fis1
    g'1 g4. bes8
    e,2. e4 fis4. g8
    fis2\stopped \grace e8 (d2.) d4
    g,4. a8 bes4. c8 d4. e8
    d1 ~ d2 ~
    d d'4. c8 bes4. a8
    g4. c,8 d2 d,
    g1 g'2 ~
    g_\segno fis1
    g bes,2
    c d d,
    g g'4 f ees4. d8
    c1 g'4 g
    c2 c4. bes8 a4. g8
    f1 f4 f
  }
  \bar "|."
}
