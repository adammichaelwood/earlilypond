%%  acte4sc4.ly
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

\version "2.14.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 15)

\paper {
  line-width    = 188\mm
  left-margin   = 10\mm
  top-margin    = 10\mm
  bottom-margin = 20\mm
  ragged-last-bottom = ##t 
  ragged-bottom = ##f
  annotate-spacing = ##f
  page-breaking = #ly:page-turn-breaking
  #(define page-breaking ly:page-turn-breaking)
}

\layout {
  \context {
    \RemoveEmptyStaffContext
  }
}

\header {
  title = \markup \center-column {"ATYS" \concat {"Acte IV, Scene Quatri" \char ##x00EA "me" }}
  subtitle = \markup \center-column { "Sangaride, Atys" }
  composer =  \markup \right-column { "Jean-Baptiste Lully" \small "(1632-1687)" }
  tagline = ""
  copyright = \markup { "Copyright : " \char ##x00A9 " 2013 Benjamin Coudrin. Copyleft : released under WTFPL License" }
}

\include "../../../3rdParty/Viole/ornements-viole.ly"
\include "../../../include/mensuration.ly"

%% PREMIER DESSUS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
premdessus = {
  \clef french
  \key g \minor
  \ter
  \relative c''' {
    r4_\markup{\italic{Ritournelle}}
    g4. aes8			| % 1
    bes4 g4. g8			| % 2
    aes4 f4. f8			| % 3
    g4 ees f			| % 4
    \vxmordant d2 d4		| % 5
    r g4. g8			| % 6
    c,4 f4. f8			| % 7
    f4 d ees4.			  % 8
    d8 \vxmordant d4. c8	| % 9
    \break
    
    \autoBeamOff
    \clef soprano
    \bin
    r1 r2. r1 r1 r1 r1 r1 r2.
    r2. r2. r1 r1 r1 r2. r1
    r2. r2. r2. r1 r1
    \break
    
    r4 r8 ees8 \vxmordant d d d8. d16
    \ter g,4 c8 c16 bes a8. g16
    \bla fis4 f8 d' d4. d8
    \bin bis4. bes8 c4 c8 g
    aes4 a8. a16 \vxmordant g8 g16 c c8 c
    \vxmordant a8. a16 a8 a bes4. bes8
    \vxmordant g4 c8 c f,4 f8. bes16
    \ter \vxmordant c8 c r4 r
    \bla r2 r4 r8 f8
    \vxmordant d4 d8. d16 a4 a8. d16
    \bin bis4 r4 r2
    r4 f'8. d16 ees8. c16 \vxmordant a8 bes16 c
    fis,8 f d'8. d16 bis4 r8 bes
    c4 c8. c16 \vxmordant a4 a8. d16
    g,4 g8 c \vxmordant a a16 a a8 [g16] a
    bes8 bes \vxmordant g4 r d'8. d16
    bis4 c8. ees16 bis4 c8 [bes16] c
    \bla c2 (bis4.) c8
    \ter c4 r8 ees16 ees \vxmordant g,8 g16 a
    \bla bes4 bes8 bes bes4 bes8 a
    \ter \vxmordant a8 a r4 r
    \bin r1 r2. r2. r2. r2.
    r1 r1 r1 r1
    r2. r1 r1 r1 r1 r1 r1 r1
    r2.
    
    \bin \vxmordant a4 f'8. f16 bes,4 r8 bes16 bes
    \ter \vxmordant g4 r8 bes16 bes ees8 ees16 ees
    \vxmordant c8 c r16 d d d d8 [ees16] f
    \bin bis,4 d8. ees16 c4 c8. bis16
    \break
    
    c4 c r g8. g16
    a4 r4 r4 f8. f16
    g4 r8 c8 d ees \vxmordant d8. ees16
    ees4 r r d8. d16
    g,4 r8 c c bes8 \vxmordant a8. g16
    g4 bis8. bes16 c4 c8. g16
    \ter aes4 a8 a16 a bes8. c16
    \vxmordant f,4 f r
    r2. \bla r1 r1
    r2 r4 c'4
    c2 bes4. bes8
    bes2 aes4 (g8) aes
    \vxmordant g2. c4
    \vxmordant a2 bes4. bes8
    bes2 a4. a8
    bes2. bes4
    g2 c4 c8 c
    \vxmordant a2. d8 d
    bes2 a4. d8
    bis2. bes4
    c2 c4. c8
    d2 c4 (bis8) c
    \vxmordant bis2. ees4
    ees2 d4 d8 d
    \vxmordant bis2 c4. c8
    c2 bis4. c8
    c2. ees4
    ees2 d4 d8 d
    bis2 c4. c8
    c2 bis4. c8
    c1
  }
}

lyrun = \lyricmode {
  % Ritournelle
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Pour- quoy m'a- ban- don- ner
  pour une a- mour nou- vel- le!
  Ce n'est pas moy qui rompt un- e
  \markup{\concat{cha \char ##x00EE -}} ne
  si bel- le,
  Ce n'est pas moy, ce n'est pas moy
  qui rompt un- e
  \markup{\concat{cha \char ##x00EE -}} ne
  si bel- le!
  A- mant In- fi- del- le, c'est vous.
  Ah! c'est vous, a- mant In- fi- del- le.
  Ah! c'est vous A- mant In- fi- del- le,
  C'est vous; qui rom- pez des li- ens __ si doux.
  C'est vous, Ah! c'est vous,
  Qui rom- pez des __ li- ens __ si doux.
  Vous m'a- vez im- mo- lée à l'a- mour de
  Cy- \markup{\concat{b \char ##x00EA -}} le.
  
  sez; Vous m'ay- mez,
  Je le croy, J'en veux
  \markup{\concat{\char ##x00EA -}} tre
  cer- tai- ne.
  Je le sou- haite __ as- sez,
  Pour le coi- re sans pei- ne.
  Je pro- mets, Je pro- mets,
  De ne chan- ger Ja- mais.
  Je pro- mets, De ne chan- ger Ja- mais.
  Quels tour- ments de ca- cher un- e si bel- le 
  \markup{\concat{fl \char ##x00E2 -}} me.
  Ay- mons en se- cret ay- mons nous:
  Ay- mons en se- cret, Ay- mons nous,
  Ay- mons plus que Ja- mais,
  en dé- pit des Ja- loux.
  Ay- mons en se- cret, Ay- __ mons nous.
  Ay- mons plus que Ja- mais,
  en dé- pit des Ja- loux.
  Ay- mons plus que Ja- mais,
  en dé- pit des Ja- loux.
}

%% SECOND DESSUS  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
secdessus = {
  \clef french
  \key g \minor
  \ter
  \relative c'' {
    r4_\markup{\italic{Ritournelle}}
    ees4. ees8 			| % 1
    d4 eis4. ees8		| % 2
    f4 d4. d8			| % 3
    ees4 c d			| % 4
    bis2 bes4			| % 5
    r c4. bes8			| % 6
    a4 d4. d8			| % 7
    d4 bis c4.			  % 8
    d8 \vxmordant bis4. c8	| % 9
    
    \autoBeamOff
    \clef alto
    \bin r2^\markup{\italic{Atys}}
    r8 ees,16 ees c8 c16 c
    \ter aes4. a16 c \vxmordant aes8 a16 g
    \bin \vxmordant g4 g r8 g16 g c8 c16 d
    ees4 ees \vxmordant g,8. g16 g8 a
    bes4 bes r8 d16 d bis8 bes16 c
    d4 d8. d16 ees4 ees8. f16
    \vxmordant d4
    
    \clef soprano
    r8^\markup{\italic{Sangaride}}
    bis'8 bes8. bes16 bes8. bes16
    \ter c4 g8 g16 g a8. bes16
    \vxmordant a8 a r c16 c c8 d16 ees
    f4 bes,8. bes16 bes8 bes16 a
    \bin bes4
    
    \clef alto
    f4^\markup{\italic{Atys}}
    bes,8. bes16 bes8. bes16
    \vxmordant g4
    
    \clef soprano
    r8^\markup{\italic{Sangaride}}
    bes'8 ees8. ees16 ees8. ees16
    \vxmordant c8 c r c
    \vxmordant aes8. a16 a8. c16
    \ter f,4 r8 f16 f bes8 bes16 bes
    \bin \vxmordant g4
    
    \clef alto
    ees8.^\markup{\italic{Atys}}
    g16 bis,4 bes8. c16
    \ter d4 d8 d16 d bis8. d16
    g,8 g
  
    \clef soprano
    ees''8^\markup{\italic{Sangaride}}
    ees16 d c8. bes16
    \vxmordant a4 a8. a16
    d8 d16 d
    \bin bis8 bes
    
    \clef alto
    g4^\markup{\italic{Atys}}
    
    \clef soprano
    bis8^\markup{\italic{Sangaride}}
    bes bes8. d16
    g,4
    
    \clef alto
    ees8.^\markup{\italic{Atys}} g,16
    aes4 a8. bes16
    g4 r8 g'8 \vxmordant f8. f16 f8. g16
    \ter ees4 ees8 ees16 d c8. bes16
    \bla \vxmordant a4 a8 r r2
    \bin r8 g'8 g8. g16 eis4. ees8
    f4 f8 f f4 f8 eis
    f8 f16 f f8 f d4. d8
    ees4 ees8 ees ees4 ees8 d
    \ter ees8 ees r g \vxmordant ees ees16 g
    \bla c,4 c8. c16 \vxmordant a4 r
    r1
    \bin r4 a'8. bis,16 c8. c16 f8 f16 f
    \vxmordant d8 d r4 r2
    r2 r4 r8 d
    ees4 ees8. ees16 \vxmordant c4 d8 f
    bes,4 bes8 ees \vxmordant c c16 d ees8 [d16] ees
    \vxmordant d4 r8 ees c4 f8. f16
    \vxmordant d4 ees8. g16 d4 ees8 [d16] ees
    \bla e2 (\vxmordant d4.) c8
    \ter c4 r r
    \bla r1
    \ter r4 r8 f16 f c8 c16 d
    \break
    \bin ees8. ees16 ees ees ees g c,8 c16 c c8 d16 ees
    \ter f8. d16 \vxmordant a4 a8 bis16 c
    bis8 bes g'8. d16 d8 d16 d
    ees8 ees16 g \vxmordant ees8 ees16 ees \vxmordant c8 c
    f8 f16 f f8 g \vxmordant c,8. d16
    \bin bes4 r8 f'8 \vxmordant d8. d16 d8. d16
    ees4 bes8. c16 \vxmordant aes4 g8 aes
    \vxmordant g g
    
    \clef soprano
    bes'8^\markup{\italic{Sangaride}}
    bes bis bes16 bes bes8. c16
    d8. d16 d8. d16 ees4 ees8 f16 g
    \ter c,8 c16 c d8 d16 ees f8 f
    \bin \vxmordant d4 d
    
    \clef alto
    bis,^\markup{\italic{Atys}}
    bes8 bes
    c4 r4 r8 g'8 g g
    c,4 r8 f8 bes,8. bes16 bes bes bes bes
    \vxmordant g4 r8 g' ees ees16 ees ees8 bes16 c
    d8 d16 bes \vxmordant d d d ees
    f8 f16 f f8 g16 d
    ees8 ees16 g ees d c bes \vxmordant a8 d16 d d8 d16 d
    bis4
    
    \clef soprano
    g''4^\markup{\italic{Sangaride}}
    r8 d16 d bis8 d
    \ter g,4 r8 g16 g c8 c16 c
    \break
    
    \bin r1 r2. r2. r1
    
    \clef alto
    r4 r8 g ees ees r4
    r4 r8 f \vxmordant d d r4
    r4 r8 ees f g \vxmordant f8. ees16
    ees4 r8 g \vxmordant d d f8. g16
    eis4 r8 ees fis g dis8. g16
    g4 r4 r2
    \ter r2.
    r4 r8 d16 d d8 d16 d
    ees4 ees8. g,16 aes8 a16 bes
    \bla \vxmordant g2 g4 g'
    g2 f4. f8
    f2 ees4 (d8) ees
    \vxmordant d2. g4
    eis ees f2 ~
    f ees4. ees8
    ees2 d4. d8
    \vxmordant c2 c4 f
    \vxmordant d2. d4
    ees2 eis4 ees8 ees
    fis2. f8 f
    g2 fis4. g8
    g2. g4
    g2 f4. f8
    f2 ees4 (d8) ees
    \vxmordant d2. g4
    aes2 f4 f8 f
    \vxmordant d2 ees4. aes8
    \vxmordant d,2 d4. ees8
    c2. g'4
    aes2 f4 f8 f
    d2 ees4. aes8
    \vxmordant d,2 d4. ees8
    c1
  }
}

lyrdeux = \lyricmode {
  % Ritournelle
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  % Atys
  Qu'il sçait peu son mal- heur!
  Et qu'il est dé- plo- ra- ble!
  son a- mour mé- ri- toit
  un sort plus fa- vo- ra- ble:
  J'ay pi- tié de l'Er- reur
  dont son \markup{\concat{c \char ##x0153 ur}}
  s'est flat- té.
  
  % Sangaride
  E- par- gnez vous le soin
  \markup{\concat{d' \char ##x00EA t-}} re si
  pi- toy- a- ble,
  son a- mour ob- tien- dra
  ce qu'il a mé- ri- té.
  
  % Atys
  Dieux! qu'est- ce que j'en- tends!
  
  % Sangaride
  Qu'il faut que je me van- ge.
  Que J'ayme en- fin le Roy,
  Qu'il se- ra mon E- poux.
  
  % Atys
  San- ga- ride, eh d'où vient
  ce chan- ge- ment E- tran- ge!
  
  % Sangaride
  N'est- ce pas vous in- grat
  qui vou- lez que Je chan- ge!
  
  % Atys
  Moy!
  
  % Sangaride
  Quel- le tra- hi- son!
  
  % Atys
  Quel fu- nes- te cou- roux!
  Pour- quoy m'a- ban- don- ner
  pour une a- mour nou- vel- le!
  Ce n'est pas moy qui rompt u- ne
  \markup{\concat{cha \char ##x00EE -}} ne
  si bel- le,
  Ce n'est pas moy qui rompt u- ne
  \markup{\concat{cha \char ##x00EE -}} ne
  si bel- le.
  Beau- té trop cru- el- le, c'est vous.
  Ah! c'est vous Beau- té trop cru- el- le.
  Beau- té trop cru- el- le, c'est vous;
  Qui rom- pez des li- ens __ si doux.
  C'est vous; Ah! c'est vous, qui rom- pez
  des __ li- ens __ si doux.
  Il est vray qu'à ses yeux par un
  se- cret ef- froy, J'ay vou- lu de nos
  \markup{\concat{c \char ##x0153 urs}}
  ca- cher l'in- tel- li- gen- ce.
  Mais ce n'est que pour vous que J'ay
  craint sa ven- gean- ce,
  Et Je ne la crains pas pour moy.
  Cy- \markup{\concat{b \char ##x00EA -}} le
  m'ayme en vain, Et c'est vous que J'a- do- re.
  
  % Sangaride
  A- près \markup{\concat{v \char ##x00F4 tre}}
  in- fi- de- li- té,
  Au- riez vous bien la cru- au- té,
  De vou- loir me trom- per en- co- re!
  
  % Atys
  Moy vous tra- hir! Vous le pen- sez!
  In- grat- te que vous m'of- fen- cez!
  he bien il ne faut plus rien tai- re,
  Je vais de la Dé- esse at- ti- rer
  la col- lè- re, m'of- frir à sa
  fu- reur puis- que vous m'y for- cez
  
  % Sangaride
  Ah! de- meu- rez, A- tys, mes soup- çons
  sont pas-
  
  % Atys
  Je ju- re, Je ju- re,
  De ne chan- ger Ja- mais.
  Je ju- re, Je pro- mets,
  De ne chan- ger Ja- mais.
  Re- dou- blons en l'ar- deur
  dans le fond de
  \markup{\concat{n \char ##x00F4 tre}} a- me.
  Ay- mons en se- cret, Ay- mons nous!
  Ay- mons ay- mons __ en se- cret,
  Ay- mons nous, ay- mons nous, 
  Ay- mons plus que Ja- mais,
  en dé- pit des Ja- loux.
  Ay- mons en se- cret, Ay- __ mons nous.
  Ay- mons plus que Ja- mais,
  en dé- pit des Ja- loux.
  Ay- mons plus que Ja- mais,
  en dé- pit des Ja- loux.
}

%% BASSE CONTINUE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
bassefig = \figuremode {
  s2.| % 
  s4 <_+>2| %  
  <_->4 s2| % 
  s2 <6 _->4| % 
  <_+>2 s4| % 
  <5/>2 s4| % 
  <9>4 <8>2| % 
  <7 _+>2 s4| % 
  <_- 7>4 <_+>2| % 
  s1| % 
  <6- 4>2.| % 
  s1| % 
  s1| % 
  s2 <_+>| % 
  <5/> s| % 
  <_+> s| % 
  <6>4 <5/>2| % 
  s2 s8. <6 4>16| % 
  <6>2 <4>8 <3>| % 
  s1| % 
  s1| % 
  s2 <6 5>| % 
  <4> <3>4| % 
  s2 <6+>| % 
  <5/>2.| % 
  s2 <6 5>4| % 
  <4> <_+> s| % 
  <_+>1| % 
  <5>2 <4 2>4 <5/>| % 
  s2. <6 4/>4| % 
  s2 <6 5>4| % 
  <_+>1| % 
  <_+>2 <_+>
  <_-> <4>4. <_+>8
  s1
  s4 <6 5> <4> <3>
  s2.
  <6 5/>2 s
  <6> <5/>
  <_+> <7>4 <6 5/>
  s <5/> s <6 5>
  <_+>2 <_+>2
  s2 s4. <6>8
  s2. <7>4
  s2. <6 _- 5>4
  <_+> <6> <_- 6 4+> <6>
  <4>2 <_+>
  s2.
  s2 <5/>
  s2.
  s1
  <_->4 <5/>2
  <_+>2.
  s2.
  <6>4. <6 5>8 s4
  s1
  <6>2 <_- 6>
  s <6+>
  <5/> s
  <5 3>4 <6 4+ 3> <_- 6 5>
  <_+>2 s
  <6>1
  s2 <6>4 <6>
  s1 s2 <5/>
  s4 <6 5> <4> <_+>
  <_+>2. s4
  <6>2.
  s2 <6>
  s2.
  s4 <_- 6 5>2
  <_+>4 <6> s8 <6 5 _-> <4> <_+>
  s1
  s1
  s2 <6>
  s2. <6 5>4
  <_+> <6> <7 _+> <_+>
  <_+>2 <6>
  <_->2.
  s
  <6>2 <6 _->4
  s1
  <7>2 <6>
  <5/> s
  <4> <3>
  <7 _+> <_->
  <4> <3>
  <7> s
  <4> <3>
  s1
  <7>2 <6 _+>
  <_+>1
  s2 <_+>
  <_+> s
  <7> <6>
  <5/> s
  <_+>2. <6>4
  <7 _->2 <6 5>
  <7 _+> <7 _->
  <4> <_+>
  s1
  <_- 7>2 <6>
  <7 _+> <7 _->
  <4> <_+>
  s1
}

basse = {
  \clef bass
  \key g \minor
  \ter
  \relative c {
    c4 c'4. c8		| % 1
    g4 c4. c8		| % 2
    f,4 bes bes		| % 3
    ees, aes f		| % 4
    g2 f4		| % 5
    eis2 ees4		| % 6
    f2 d4		| % 7
    g2 c,4		| % 8
    f,4 g2		| % 9
    \bin c1 ~		| % 10
    \ter c2. ~		| % 11
    \bin c2 ~ c2 ~	| % 12
    c1			| % 13
    g'			| % 14
    bis,2 c		| % 15
    g g'		| % 16
    \ter eis4 ~ eis2	| % 17
    f2 ~ f8. [ees16]
    d4. ees8 f [f,]
    \bin bes1
    ees
    aes2 ~ aes
    \ter bes bes,4
    \bin ees2 d4. c8
    \ter bis2.
    c
    d2 ~ d4
    \bin g2. g8 [f]
    ees2 ees4 d
    ees4. ees8 bes'4 bis
    \ter c c,2
    \bla d1
    a'2 c
    f, c
    f bes,
    c4 aes bes2
    ees2.
    eis2 f ~
    f fis
    g aes4 ais
    bes4 bis c2
    d4 d, g4. g8
    c,2 f4. d8
    ees4. c8 f4 f,
    bes ees aes f
    g ees f ees8 [c]
    \bla g'2 g,
    \ter c2.
    \bla g'2 eis
    \ter f2.
    \bin c4 ~ c aes'2
    \ter f4 fis2
    g2.
    c,2 f4
    d4. ees8 f [f,]
    \bin bes2 bes'
    g f
    ees d4. c8
    bis2 c
    \ter aes f4
    \bin g2 g'
    eis1
    f2 d4 ~ d
    ees1
    bes'2 bis
    c4 c, d d,
    g2. g'4
    \ter eis2.
    \bin f2 d
    ees2 c4
    aes'4 f2
    g2 aes8 [f] g [g,]
    c2 c'
    f, bes
    ees,4. aes16 [g]
    f8 [ees] bes' [bes,]
    ees2 bes'4 bis
    c4. c8 d [g,] d4
    g, g' eis2
    f2.
    bes2.
    g2 f4
    \bla ees2. ees4
    aes2 ais
    bis c4 c,
    g'1
    c2 f,
    c2. c4
    f2 bes,
    f1
    bes2 bes'
    c ~ c
    d1
    ees4 c d d,
    g2. g4 aes2 ais
    bis c4 c,
    g'2. ees4
    f2. f4
    g2 f
    g g,
    c2. c4
    f2. f4
    g2 f
    g g,
    c1
  }
  \bar "|."
}


%% CONDUCTEUR     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new StaffGroup  <<
    \new Voice = "premdess" <<\override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \premdessus >>
    \new Lyrics \lyricsto premdess { \lyrun }
    \new Voice = "secdess" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \secdessus >>
    \new Lyrics \lyricsto secdess { \lyrdeux }
    \new Staff <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \figuremode { \bassefig }
      \basse
    >>
 >>
}