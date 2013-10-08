%% recitatif1.ly
%% Louis Nicolas Clérambault
%% Premier livre de cantates, n°4
%% Poliphème
%% Author : Benjamin Coudrin, 2013

%% BARYTON %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Abaryton = {
  \clef bass
  \key g \minor
  \relative c' {
    \bla
    \autoBeamOff
    r4 bes8 bes f4 f8 bes
    g\stopped r ees g ees4\stopped ees8 d
    \bin
    d4\stopped r16 d d bes f'8. f16 f8 g
    \grace g8 (a4) a16 r f8 c'8. [ \times 1/4 {s16 d c bes]} a [bes c a]
    (d4) ~ d16 c bes a g8 c16 bes a8 g16 f
    eis4\stopped ees8 c f f16 bes, c8 c16 c
    f,4 r8 r16 f' a4 \times 1/2 {r8} a16 a f
    c'8 c16 c a8\stopped a16 f bes8. bes16 r8 r16 d16
    bes4 bes8 c16 d g,4. bes8
    ees,4 ~ ees16 ees f g c,4 r
    f8. f16 f8 g aes4 a8 g
    g\stopped g r a!16 f bes4. bes16 a 
    \deux \grace a8 (bes1)
    \bar "|." \break
  }
}

Alyrbar = \lyricmode {
  Po- li- phême in- qui- et, a- mou- reux, et ja- loux,
  Cher- choit l'ai- ma- ble Ga- la té- e,
  Les Vents __ _ im- pé- tu- eux et la mer a- git- té- e
  sem- bloient par- ta- ger son cou- roux.
  Ve- nez, s'é- cri- oit il ne- re- i- de sé- vè- re,
  Ve- nez par vos ap- pas cal- mer mon trou- ble~af- freux
  par- ta- gez la flâ- me sin- cè- re 
  de mon coeur a- mou- reux.
}

%% BASSE CONTINUE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Abassefig = \figuremode {
  s1
  <6 5>2 <7>
  s2 <6>4. <6\\>8
  s1
  s2 <_+>8 <5/>8 s8 <6>16 <6\\>
  <_+>2 <6>4 <4>8 <_+>
  s1
  s4 <4+> <6>2
  s2 <6 5>
  s1
  s2 <5/>
  s4 <4+> <6>4 <4>8 <3>
  s1
}

Abasse = {
  \clef bass
  \key g \minor
  \bla
  \relative c {
    bes1
    ees,2 f
    \bin bes a4. g8
    f2 ~ f4. f8 
    bes8. [c16] bes [a] g32 [a bes g] c8. [\times 1/2 {s32 eis, ees ees]} f8 [eis16 d]
    c8. [\times 1/2 {s32 g' a bes]} c16 [ d c bes] a [g a bes] c[ bes c c,] 
    f2 ~ f ~ 
    f4 ees d2 ~
    d ees ~ 
    ees f ~ 
    f d
    ees d8. [ees16] f4
    \deux \grace s8 bes,1
  }
  \bar "|."
}
