%% airgracieusement.ly
%%  This file is part of the Earlilypond project
%%  
%%  Copyright (c) 2013 Benjamin Coudrin <benjamin.coudrin@gmail.com>
%%                All Rights Reserved
%%
%%  This program is free software. It comes without any warranty, to
%%  the extent permitted by applicable law. You can redistribute it
%%  and/or modify it under the terms of the Do What The Fuck You Want
%%  To Public License, Version 2, as published by Sam Hocevar. See
%%  http://sam.zoy.org/wtfpl/COPYING for more details.

%% DESSUS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Fdessus = {
  \clefDessus
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
    \clef bass
    r8 bes, c4. d8 \break
    \clefDessus
    %r2.
    r2. r2.
    r4 c'8_\markup{\italic doux} [bes] a [g]
    f2 r4
    bes8 [(a)] \times 2/3 {bes [(c bes)]} \times 2/3 {a\stopped [(g a)]}
    bes2 r4
    r r r8 bes
    ees2 r8 c
    f2 r8 f
    \times 2/3 {g [(f g)]} \times 2/3 {c, [(d ees)]} \times 2/3 {f [(g ees)]}
    d8\stopped [(c) bes (c) d (ees)]
    f2 r4
    d8 [(c)] \times 2/3 {d [(ees f)]} \times 2/3 {d [(ees f)]}
    bes,4 bes8 [bes] c [d]
    g, [ees'] c4.\stopped bes8
    bes8_\markup{\italic fort} [(a) bes (c) d (ees)] \break
    f4. ees8 [d\stopped c]
    d [(c)] \times 2/3 {d [(ees f)]} \times 2/3 {d [(ees f)]} 
    g2 r4
    g8 [(f) g (eis) f (g)]
    \grace g (a4.) f8 [g a]
    bes [(a) g (f) ees (d)]
    c [(bes)] a4.\stopped bes8
    bes2^\markup{\bold\italic fin}\fermata \bar "||" \bar "" \break r4
    r2. r2. r2.
    r2. r2.
    r4 r d,
    g2 g8 [bes]
    fis4\stopped f g
    a d, r8 d'_\markup{\italic doux}
    d2 (c8\stopped) [bes]
    a\stopped [(g)] \times 2/3 {a [(bes c)]} \times 2/3 {bes [(a g)]}
    fis8\stopped [(eis) fis (g) a (bes)]
    \times 2/3 {c [(d ees)]} d [(c)] bes\stopped [(a)]
    bes [(c)] a4.\stopped g8
    g2 g4_\markup{\italic fort}
    c4. d8 ees4
    bis2\stopped bes8 [c]
    d4 g, r
    r2. r2.
    r4 r r8 d'8_\markup{\italic doux}
    ees4. d8 [c (bis)]
    c8 [(d)] bis4.\stopped c8
    c2 r4
    a2 r4
    a2 a8 [d]
    cis2\stopped r8 c
    d4. d8 eis4
    f8 [(eis16\stopped d)] cis4.\stopped d8
    d2 r4_\markup{\bold \italic {Da capo} }
    \bar "||"
  }
}

Flyrdes = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  A- mants ja-
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
    r4 c'8 bes a g
    f4 c4. c8
    f,2 r4 \break
    r2. r2. r2. 
    r2. r2. r2. 
    r2. r2.
    r2.%r8 bes' c4. d8
    g'2 r4
    c8 [(d)] ees [(d)] c [(bes)]
    a ([bes] a) g (f4)
    bes2 a8 g
    f g ees4.\stopped (d16) ees
    d2\stopped bes8 bes
    f'4 g8 a bes g
    c2 a4\stopped
    r4 bes8 a bes d,
    ees4 f4. f8
    bes,2 r4
    r4 bes'8 bes f g
    aes4 a4.\stopped a8
    g4 g8 g a! bes
    ees,4 f4. f8
    bes,2 r4
    r2. r r
    r2. r r
    r
    r4\fermata r4 d
    g2 g8 bes
    fis4\stopped f g
    a d, r8 a'
    bes4. bes8 c4
    d c4.\stopped d8 \break
    d2 r4
    r2. r
    r4 r d, g2 g8 bes
    fis4\stopped f g
    a d, r8 d'
    fis,4.\stopped f8 g4
    c, d4. d8
    g,2 r4
    r2. r
    r4 r g' c4. d8 ees4
    bis2\stopped bes8 c
    d4 g, r8 g
    c4. bes8 aes [(g)]
    f [(ees)] d4.\stopped c8
    c2 r8 eis8
    ees4. f8 g4
    f2 eis8 d
    a'4 a r8 a
    bis4. bes8 cis4
    d f, (eis8.) d16
    d2 r4_\markup{\bold \italic {Da capo} }
  }
}

Flyrbar = \lyricmode {
  A- mants ja- loux rom- pez vos chai- nes
  Quand rien ne flat- te votre ar- deur,
  A- mants ja- loux rom- pez vos chai- nes
  Quand rien ne flat- te votre ar- deur
  Quel- ques fois en ven- geant vos pei- nes
  vous en re- dou- blez la ri- gueur.
  %A- mants ja-
  loux rom- pez vos chai- nes
  Quand rien ne flat- te cotre ar- deur,
  Quel- ques fois en ven- geant vos pei- nes
  vous en re- dou- blez la ri- gueur
  vous en re- dou- blez la ri- gueur
  vous en re- dou- blez la ri- gueur
  La mort d'un ri- val qui sçait plai- re
  Ac- ca- ble l'ob- jet de vos voeux
  La mort d'un ri- val qui sçait plai- re
  Ac- ca- ble l'ob- jet de vos voeux,
  Si vous con- ten- tez la co- lè- re
  L'a- mour en est plus mal- heu- reux
  Si vous con- ten- tez la co- lè- re
  L'a- mour en est plus mal- heu- reux.
}

%% BASSE CONTINUE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Fbassefig = \figuremode {
  s2. s2.
  s2. s2.
  <6>2.
  <5/>
  s
  s
  <_+>
  s
  <6>2 <6 5>4
  s <4> <3>
  s2. s2.
  s2. s2.
  <6>
  <6>4 <7 4> <3>
  s2. s s s
  <6>4 <6> s
  s2. s s
  <6>
  <6>4 <7 4> <3>
  s2. s
  <_+>
  <6>
  s4 <4> <_+>
  s2.
  <5/>
  s
  s
  <_+>
  <_+>
  <6>2 <6 5>4
  s4 <4> <_+>
  s2.
  <6>4 <6> s
  s2.
  s
  s
  <6> <6>4 <7 4> <3>
  s2.
  s
  s
  <6>
  <6 5>4 <4> <3>
  s2.
  <6>
  s4 <7->2
  s2 <4+ 2>8 <6>
  <6 5>4 <4> <3>
  s2.
  <5/>
  s
  s
  <_+>
  s
  <6>2 <6 5>4
  s <4> <3>
  s2.
  s
  <_+>
  <5/>
  s2 <6 4>4
  <6> <7> <6>
  <_+>2.
  <6>
  <_+>
  <5/>
  <7>2 <6>4
  <7 _+>2 <6 4>4
  <_+>2 s8 <7 6 4>
  <7- 5/>2.
  <7>4 <4> <_+>
  <_+>2.
  s
  <_+>
  <5/>
  <6>
  <_+>
  <4+>
  <6>2 <6 5 _->4
  s <4> <_+>
  <_+>2.
  <5/>
  s2 <6 3+>8 <6>
  <_+>2.
  <4+>2 <6\\>4
  s <4> <_+>
  s2.
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
    a2 r4
    f4 c' c,
    f2 r4
    eis'8 [d eis c d eis]
    f2 r4
    bes,8 [a] \times 2/3 {bes [(c d)]} \times 2/3 {bes [(c d)]}
    g,2 r4
    c8 [bes] \times 2/3 {c [(d c)]} \times 2/3 {bes [(c bes)]}
    a2 bes4 ~
    bes c c,
    f'8 [ees] \times 2/3 {f [(g f)]} \times 2/3 {ees [(f ees)]}
    d4 c bes
    \times 2/3 {ees8 [(d ees)]} \times 2/3 {f [(ees f)]} \times 2/3 {g [(f g)]} 
    c,2 r4
    f8 [ees] \times 2/3 {f [(g f)]} \times 2/3 {ees [(f ees)]} 
    d2 r4
    d,8 [ees] f4 ~ f
    bes2 r4
    r8 bes ees4 ~ ees
    r8 c f4. ees8
    d2 r8 d
    ees4 f f,
    g4. g8 [f ees]
    d2 r4
    r bes'8 [c d bes]
    ees4 ~ ees r8 d
    ees4 f f,
    bes2 r4
    a8 [g a f g a]
    bes2 r4
    ees8 [d] \times 2/3 {ees [(f g)]} \times 2/3 {ees [(f g)]}
    c,2 r4
    f8 [ees] \times 2/3 {f [(g f)]} \times 2/3 {ees [(f ees)]}
    d2 ees4 ~
    ees f f,
    bes2_\markup{\bold\italic fin}\fermata r4
    r r g
    d'4 c8 [bes] a [g]
    fis [eis fis d eis fis]
    g2 g'4
    f ees2
    d8 [c] \times 2/3 {d [(ees d)]} \times 2/3 {c [(d c)]}
    bes2 g4
    d' c8 [bes a g]
    fis2 g4
    ees'8 [f ees d ees c]
    d2. ~
    d2 r8 d'
    fis,4. f8 g4
    c, d d,
    g2 r4
    r r c
    g' f8 [ees d c]
    bis2 c8 [d]
    ees [f ees d] c4
    g'2 g,4
    f4. aes8 [g f]
    ees2 f4 ~
    f g2
    c r4
    cis4. bis8 a4
    d2 c8 [bes]
    a [g a bes a g]
    f2 eis4
    d a' a,
    d2 r4_\markup{\bold \italic {Da capo} }
    \bar "||"
  }
}
