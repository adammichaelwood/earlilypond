%% recitatif2.ly
%% Louis Nicolas Clérambault
%% Premier livre de cantates, n°4
%% Poliphème
%% Author : Benjamin Coudrin, 2013

%% BARYTON %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Cbaryton = {
  \clef bass
  \key g \minor
  \relative c {
    \bin
    \autoBeamOff
    ees4 ees16 f g a bes4 r8 bes16 bes
    bis4.\stopped bes16 c c4 c8 r
    r16 g g g ees ees ees ees c4 r8 c'16 bes
    aes8 a16 g f8 ees
    d8.\stopped d16 r8 bes'16 bes
    \ter
    ees8 ees16 ees fis,8 f16 f f8\stopped f16 a
    d,4 r8 d'16 c bes8 c16 d
    ees,8. g16 c,4 d8 d16 d
    g,4 g8 r r4
    \bar "|." \break
  }
}

Clyrbar = \lyricmode {
  Mais je l'ap- pelle en vain.
  C'est a- cis qu'elle a- do- re
  Pu- nis- sons le de son bon- heur
  il m'of- fence et Res- pire en- co- re
  il tri- omphe et j'é- prouve
  un- e vi- ve dou- leur
  E- tei- gnons dans son sang le feu qui
  me dé- vo- re.
}

%% BASSE CONTINUE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Cbassefig = \figuremode {
  s2 <6>
  <6\\> s
  s4 <6> s2
  <6 5>1
  <7>4 <6 4+ 3->2
  <4+ 2>4 <6>2
  <6 5>4 <6> <4>8 <_+>
  <_+>2.
}

Cbasse = {
  \clef bass
  \key g \minor
  \bin
  \relative c {
    ees2 d ~
    d c ~
    c4 g aes2 ~
    aes bes
    \ter
    c4 ~ c ~ c ~
    c bes ~ bes
    c ees d8 [d,]
    g2 ~ g4
  }
  \bar "|."
}
