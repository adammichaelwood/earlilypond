%% airgracieusement.ly
%% Louis Nicolas Clérambault
%% Premier livre de cantates, n°4
%% Poliphème
%% Author : Benjamin Coudrin, 2013

%% DESSUS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Fdessus = {
  \clef french
  \ter
  \key g \minor
  \tempo "Air"
  \override Voice.TupletNumber #'stencil = ##t
  \relative c'' {
    bes4_\markup{\italic Gracieusement} c d
    g,2 r4 c8 [(d) ees (d) c (bes)]
    a4.\stopped g8 a [(f)]
    bes [(a) bes (c) d (ees)]
    f4. ees8 [d\stopped c]
    d [(c)] \times 2/3 {d [(ees f)]} \times 2/3 {d [(ees f)]}
    g2 r4
    g8 [(f) g (eis) f (g)]
    \grace g (a4.) f8 [g a]
    bes [(a) g (f) ees (d)]
    c [(bes)] a4.\stopped bes8
    bes2 r4
    r2. r2. r2.
    r2. r2.
    bes4 c d
    g,2 r4
    c8 [(d) ees (d) c (bes)]
    a [(bes) a (g)] f4
    \times 2/3 {d'8_\markup{\italic doux} [(c d)]} \times 2/3 {ees [(d ees)]} \times 2/3 {f [(ees f)]} 
    bes,2 r4
    ees8 [(f)] g [(f)] ees [(d)]
    c [(d)] c [(bes)] a\stopped [(g)]
    f2 r4
    bes8 [(a)] \times 2/3 {bes [(c bes)]} \times 2/3 {a\stopped [(g a)]}
    bes2 r4
    r f'8 [f] bes [a]
    g4\stopped g8 [f] eis [d]
    c2 c8 [bes]
    \times 2/3 {a8\stopped [(g f)]} \times 2/3 {g [(a g)]} \times 2/3 {c, [(f eis)]}
    f8_\markup{\italic fort} [(eis) f (g) a (bes)]
    c4. bes8 [a\stopped g]
    a8 [(g)] \times 2/3 {a [(bes c)]} \times 2/3 {a [(bes c)]}
    d2 r4
    d8 [(c) d (bis) c (d)]
    \grace d (eis4.) c8 [d eis]
    f [(eis)] d [(c) bes (a)]
    g [(f)] eis4.\stopped f8
    f2 r4
    r2. r2. r2.
    r4 c'8_\markup{\italic doux} [bes] a [g]
    f2 r4
    bes8 [(a)] \times 2/3 {bes [(c bes)]} \times 2/3 {a\stopped [(g a)]}
    bes2 r4
  }
}

%% BARYTON %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Fbaryton = {
  \clef bass
  \ter
  \key g \minor
  \relative c' {
    \autoBeamOff
    r2. r2. r2.
    r2. r2. r2.
    r2. r2. r2.
    r2. r2. r2.
    r8 bes c4. d8
    g,2 r4
    c8 [(d)] ees [(d)] c [(bes)]
    a8 ([bes] a) g (f4)
    bes2 a8. g16
    f8 g ees4\stopped (d8) ees
    d2\stopped r4
    r2. r2. r2. 
    r8 bes' c4. d8
    g,2 r4
    c8 [(d)] ees [(d)] c [(bes)]
    a ([bes] a) g (f4)
    bes2 a8 g
    f g ees4.\stopped (d16) ees
    d2\stopped f8 f
    bes4 bes8 a g f
    eis2\stopped ees4
  }
}

Flyrbar = \lyricmode {
  A- mants ja- loux rom- pez vos chai- nes
  Quand rien ne flat- te votre ar- deur,
  A- mants ja- loux rom- pez vos chai- nes
  Quand rien ne flat- te votre ar- deur
  Quel- ques fois en ven- geant vos pei- nes
}

%% BASSE CONTINUE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Fbassefig = \figuremode {
  s2.*4
  <6>2.
  <5/>
  s
  s
  <_+>
  s
  <6>2 <6 5>4
  s <4> <3>
  s2.*3
}

Fbasse = {
  \clef bass
  \ter
  \key g \minor
  \override Voice.TupletNumber #'stencil = ##t
  \relative c {
    bes2 r4
    ees4 f g
    c,2 r4
    f8 [ees] \times 2/3 {f8 [(g f)]} \times 2/3 {ees8 [(f ees)]}
    d2 r4
    a8 [g a f g a]
    bes2 r4
    ees8 [(d)] \times 2/3 {ees8 [(f g)]} \times 2/3 {ees8 [(f g)]}
    c,2 r4 f8 [ees] \times 2/3 {f8 [(g f)]} \times 2/3 {ees8 [(f ees)]}
    d2 ees4 ~
    ees f f,
    bes2 r4
    ees f g
    c,2 r4
    f8 [ees] \times 2/3 {f [(g f)]} \times 2/3 {ees [(f ees)]} 
    d2 r4
    d,8 [ees] f2
    bes, r4
    ees'4 f g
    c,2 r4
    f8 [ees] \times 2/3 {f [(g f)]} \times 2/3 {ees [(f ees)]} 
    d4 c bes
    \times 2/3 {ees8 [(d ees)]} \times 2/3 {f [(ees f)]} \times 2/3 {g [(f g)]} 
    c,2 r4
    f8 [ees] \times 2/3 {f [(g f)]} \times 2/3 {ees [(f ees)]} 
    d2 r4
    d,8 [ees] f2 
    bes, r4
    r r g'8 [g]
    c [bes] \times 2/3 {c [(d c)]} \times 2/3 {bes [(c bes)]}
    \bar "||"\mark \markup \normalsize { \musicglyph  #"scripts.segno" }
  }
}
