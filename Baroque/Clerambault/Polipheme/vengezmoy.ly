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
    g2
    r
    r4 r8 aes,16 [bes]
    c8 [c16 bes] aes [g f ees]
    d4 r8 bis'16 [c]
    d8 [d16 d] bis8 [d]
    g,4 r
    r8 r16 c, g'8. [g16]
    c [d c bes] aes [g f ees]
    d [c d ees] d [ees d f]
    ees [d ees f] ees [g f a]
    g8 [c] d, [bis']
    c8 [g'16 f] g8 [d]
    ees [g16 f] g8 [d]
    ees [g,] c [ees]
    d16 [c bis a] g [ees d c]
    bis8 [d'16 c] d8 [d,]
    g [g'16 f] g8 [g,]
    ees' [d16 c] bis8.\stopped [c16]
    c4 r8 ees,16 [f]
    g8 [g16 g] ees8 [c]
    g'8 [ees16 d] c8 [c']
    bis [bes16 a] g8 [ees']
    d8 [d16 d] bis8 [g]
    ees'!8 [ees16 d] c8 [g]
    aes [f'16 ees] d8 [a!]
    b! [d16 c] d8 [d,]
    ees [c'] d, [bis']
    c,2^\markup{\bold\italic fin}\fermata
    r
    r4 r8 c'16 [d]
    ees!8 [ees16 d] c [bes aes g]
    f2
    r8 f g [aes]
    bes8. [bes16] bes8.\stopped [aes16]
    g8. [g16] g8.\stopped [f16]
    ees8. [g16] c8. [d16]
    ees8. [(d16)] c8. [(bes16)]
    a4\stopped r8 c
    f [\grace ees (d)] \grace c (bes) [ees]
    d8. [c16] d8. [ees16]
    d4 (c8.\stopped) [bes16]
    bes4 r8 g16 [aes]
    bes8 [bes16 bes] g8 [ees]
    bes'2
    r2
    r4 r8 c16 [d]
    ees8 [ees16 d] c [bes aes g]
    f2
    r8 f g [aes]
    bes8. [bes16] bes8. [aes16]
    g8. [g16] g8.\stopped [f16]
    ees8. [g16] c8. [d16]
    ees8. [d16] c8. [bes16]
    aes8. [g16] f8. [ees16]
    d8\stopped [f] g [aes]
    bes8 [c16 d] ees8. [g,16]
    g4 (f8.\stopped) [ees16]
    ees4 r8 ees16 [f]
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
    bis8 \grace a8 (g) r d'16 ees
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
    r4 r8 ees'16 f
    g8 g16 g ees8 c
    g'4 r16 ees f g
    a8. g16 f [ees] d [c]
    bis8\stopped \grace a8 (g) r d'16 ees
    f8. f16 f8 ees16 d
    ees8 r16 c g'8. g16
    c [d ees d] c [bes aes g]
    (f8) aes d, f
    bis,16 [a bis c] bis [c bis d]
    c [bis c d] c [ees d f]
    ees [g f aes] (g4)
    c, r8 r16 g'
    c4 r8 r16 g
    c4 r
    r8 g c ees
    d16 [c bis a] g [aes f g]
    ees [f d ees] c [d ees f]
    g [aes f aes] (g4)
    c,2^\markup{\italic fin}
    r
    r
    r
    r
    r
    r
    r
    r
    r4 r8 g'16 aes
    bes8 bes16 bes g8.\stopped ees16
    bes'4 r8 ees16 d
    c2
    aes8. g16 f8. ees16
    d4\stopped \grace c8 (bes4)
    r8 f' g aes
    bes8. bes16 bes8. a16
    g4.\stopped r16 g
    c8. [d16] ees8. [d16]
    c8. [bes16] (a4\stopped)
    \grace g8 (f4) g8 a
    bes4 ~ bes8. ees,16
    f2
    \grace f8 (bes,2)
    r
    r4 r8 g'16 aes
    bes8 bes16 bes g8.\stopped ees16
    bes'4 r8 ees16 d
    c2
    aes8. g16 f8. ees16
    d4\stopped \grace c8 (bes4)
    r8 f' g aes
    bes8. bes16 bes8. aes16
    g4.\stopped r16 g
    c8. [d16] ees8. [d16]
    c8. [bes16] aes8. [g16]
    (f8) \grace ees (d) ees f
    g4\stopped ~ g8. aes16
    bes4 (bes,)
    ees2
  }
}

Dlyrbar = \lyricmode {
  Ven- gez moy d'un fa- tal vain- queur
  de- pit ja- loux af- freu- se haine _ 
  Ban- nis- sez l'a- mour de mon coeur
  Ve- nez vo- lez __ _
  Br- sez ma chai- __ _ _ _ _ _ _ ne
  Ven- gez moy d'un fa- tal vain- queur
  de- pit ja- loux, af- freu- se haine _
  ban- nis- sez l'a- mour de mon coeur.
  Ve- nez vo- lez __ _ bri- sez ma
  chai- __ _ _ _ _ ne,
  Ve- nez vo- lez bri- sez ma
  chai- __ _ _ _ _ ne
  Im- mo- lez un ri- val ai- mé
  que sa mort ca- lme mes al- lar- mes
  Et que l'ob- jet qui m'a char- me
  Re- pen- __ _ _ de d'é- ter- nel- les lar- mes
  Im- mo- lez un ri- val ai- mé
  que sa mort cal- me mes al- lar- mes;
  Et que l'ob- jet qui m'a char- mé
  Re- pen- __ _ _ _ de d'é- tern- nel- les
  lar- mes
}

%% BASSE CONTINUE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Dbassefig = \figuremode {
  s2
  s
  <6>
  <_+>4 <6>
  <_+>2
  s
  <7 _->4 r8 <6 5 _!>
  <_+>2
  <6>8 <6 5 _-> <4> <_+>
  s2
  s
  <6>
  <6 5 _->
  <_+>
  <5/>
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
  <_+>4 <6>
  s2
  <6>
  <6 5 _->
  <_+>
  <5/>
  s
  s
  <6>4 <6 5 _->
  <_+>2
  s4. <6>8
  <6> <6 5 _-> <4> <_+>
  s4. s16 <_+>
  s4. s16 <_+>
  s2
  s
  <_+>4. <4+>8
  <6>2
  s8 <6 5 _-> <4>8 <_+>
  s2
  s
  <6>
  <_+>4 <6>
  <_+>2
  s
  <7 _->4. <6 5 _!>8
  <_+>2
  s8 <6 5 _-> <4> <_+>
  s4. <5>8
  s2
  <6>
  <7>
  <6 5>
  s2
  s
  <6 4>4 <7>8 <5/>
  s4 <6>8. <6\\>16
  s2
  s
  <6>4. <6>8
  s4. <6 5>8
  <4>4 <3>
  s4 <6>
  s2
  <6>
  s
  <6>
  <7>
  <6 5>
  s
  s
  <6 4>4 <7>8 <5/>
  s4 <6>8. <6\\>16
  s2
  <_->
  s4 <6 4>8. <4+>16
  <6>2
  <4>4 <3>
  s
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
    g8 [g'16 f] ees [f ees d]
    c4 r8 c16 [d]
    ees8 [ees16 d] c [bes aes g]
    f4 r8 f
    g4 r8 g'
    bis,4 r8 bes
    c2
    c,4 r8 c'16 [bes]
    aes [bes aes g] f [g aes f]
    g4 r8 g
    c4 r8 d
    ees [f] g [g,]
    c4 r8 r16 g'
    c4 r8 r16 g
    c4 r
    r r8 c,
    g'4 r8 f
    ees4 r8 ees16 [d]
    c8 [f,] g4
    c,2
    c'4 r8 c16 [d]
    ees4 r8 ees16 [f]
    g8 [g16 g] ees8 [c]
    g'4 r8 g
    c4 r8 c,
    f4 r8 f,
    g4 r8 g16 [f]
    ees8 [f] g4
    c,4^\markup{\bold\italic fin}\fermata	 r8 ees'
    ees4 r8 ees16 [f]
    g8 [g16 f] ees [d c bes]
    aes2
    a8. [bes16] c8. [aes16]
    bes2
    bes,
    r8 bes' c [d]
    ees [ees] ees8.\stopped [d16]
    c4 r8 c
    f8. ([f16] f8.\stopped [ees16])
    d8 [bes] ees [c]
    g'8. [a16] bes8 [ees,]
    f4 f,
    bes16 [c bes aes] g [aes g f]
    ees4 r8 ees'16 [f]
    g [aes g aes] bes [aes g f]
    ees4 r8 ees16 [f]
    g8 [g16 f] ees [d c bes]
    aes2
    a8. [bes16] c8. [aes16]
    bes2
    bes,
    r8 bes' c d
    ees8. [ees16] ees8.\stopped [d16]
    c4. c8
    f4 r8 f,
    bes8. [bes16] bes8.\stopped [aes16]
    g8. [f16] ees16 [f g aes]
    bes4 bes,
    ees8 [ees'16 f] g [f ees d]
    \bar "||"\mark \markup \normalsize { \musicglyph  #"scripts.segno" }
  }
}
