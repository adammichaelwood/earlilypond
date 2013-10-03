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
  }
}

%% BARYTON %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Dbaryton = {
  \clef bass
  \time 2/4
  \key g \minor
  \relative c' {
    \autoBeamOff
    r2
  }
}

Dlyrbar = \lyricmode {
  Ven- gez moy
}

%% BASSE CONTINUE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Dbassefig = \figuremode {
  s2
}

Dbasse = {
  \clef bass
  \time 2/4
  \key g \minor
  \relative c, {
    c2
  }
  \bar "|."
}
