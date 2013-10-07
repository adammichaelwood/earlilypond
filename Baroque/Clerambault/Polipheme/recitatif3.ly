%% recitatif3.ly
%% Louis Nicolas Clérambault
%% Premier livre de cantates, n°4
%% Poliphème
%% Author : Benjamin Coudrin, 2013

%% BARYTON %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ebaryton = {
  \clef bass
  \key d \minor
  \relative c {
    \bin
    \autoBeamOff
    r8 f16 f a8 c g4\stopped g8 a
    \grace a (bes8.) bes16 r8 bes16 bes bes8 d bes8\stopped bes16 a
    a2\stopped a16 a a c f,8 f16 f
    d8\stopped d16 f bes a g f e8\stopped e16 f d8\stopped d16 e
    c2 r8 g'16 g bes8 bes16 d
    g,8 g ees16\stopped e e d d8.\stopped d16 r8 bes'16 bes
    \ter bes8 c16 d \grace d8 (e4) e16 r e8
    \bin a,4\stopped a8 a16 bes g4 r8 d'16 d
    \ter bis8\stopped bes16 g c8 c16 c f,8 f16 e
    \bin e8.\stopped e16 r4 g8 g16 g a8 bes
    \ter d,8. e16 f4 f8 f16 e
    \grace e8 (f2.)
    \bar "|." \break
  }
}

Elyrbar = \lyricmode {
  Le ter- ri- ble fils de Nep- tu- ne
  Ex- pri- moit ain- si ses tour- ments
  Lors- que la bar- ba- re for- tu- ne 
  of- frit a son cou- roux deux fi- del- les
  a- mants
  D'un ro- cher qui l'ac- cable A- cis
  est la vic- ti- me
  En nom- mant Ga- la- té- e A- cis
  quit- te le jour
  Po- li- phè- me ja- loux s'ap- lau- dit
  de son cri- me mais il en est bien- tot
  pu- ni par son a- mour
  
}

%% BASSE CONTINUE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ebassefig = \figuremode {
  s2 <_4+>4. <6\\>8
  s2. <5/>4
  s1
  s2 s8 <7> <4> <_+>
  s1
  s4 <7+ 6- 2 4> <3>2
  s4 <6 5 _->2
  <4>4 <_+> s2
  <4+>4 <6> <6\\>
  s2 <5>
  <3>8 <4+> <6>4 <4>8 <3>
  s2.
}

Ebasse = {
  \clef bass
  \key d \minor
  \bin
  \relative c, {
    f2 bes4. a8
    g2 ~ g4 e
    f1
    bes4 g c8 [f,] g4
    c,4. r32 c' [bes a] g4 ~ g ~
    g ~ g ~ g2 ~
    \ter g4 c2
    \bin d4 d, g2
    \ter f4 e d
    \bin c2 ees
    \ter bes'4 a8. [bes16] \times 1/2 {c4 c,}
    f2.\bar "|."
  }
}
