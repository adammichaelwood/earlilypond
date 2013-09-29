%% polipheme.ly
%% Louis Nicolas Clérambault
%% Premier livre de cantates, n°4
%% Poliphème
%% Author : Benjamin Coudrin, 2013

\version "2.16.0"

\header {
  tagline = ""
  composer = "Louis Nicolas Clérambault"
    composerDate = "1676-1749"
    date = "1710"
    title = "Poliphème"
    subtitle = ""
    opus = "Premier livre de cantates, N.4"
    publisher = \markup { "Copyright : " \char ##x00A9 " 2013 Earlilypond, Benjamin Coudrin" }
}

#(set-default-paper-size "a4")
#(set-global-staff-size 15)

\layout {
  \context {
    \Score
    \override SpacingSpanner #'uniform-stretching = ##t
    \override Stem #'neutral-direction = #1
  }
  \context {
    \Voice
    \override TupletNumber #'stencil = ##f 
    \override TupletBracket #'bracket-visibility = ##f 
  }
  \context {
    \RemoveEmptyStaffContext
    \override VerticalAxisGroup #'remove-first = ##t 
  }
}

\include "../../../3rdParty/Viole/ornements-viole.ly"
\include "../../../include/mensuration.ly"

%% DESSUS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dessus = {
  \clef french
  \key g \minor
  \bla
  \relative c''' {
    r1 r
  }
}

%% BARYTON %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
baryton = {
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

lyrbar = \lyricmode {
  Po- li- pheme in- qui- et a- mou- reux & ja- loux
  Cher- choit l'ai- ma- ble ga- la té- e les Vents _
  Im- pé- tu- eux et la mer a- git- té- e
  sem- bloit par- ta- ger son Cou- roux.
  Ve- nez, s'é- cri- oit il ne- re- i- de sé- vè- re,
  Ve- nez par vos a- pas Cal- mer mon trou- ble~af- freux
  par- ta- ger la flâ- me sin- cè- re 
  de mon coeur a- mou- reux.
}

%% BASSE CONTINUE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
bassefig = \figuremode {
  s1
  <6 5>2 <7>
  s2 <6>4. <6>8
  s1
  s2 <_!>4 s8 <6>16 <6\\>
  <_+>1
  s1
  s4 <4+> <6>2
  s2 <6 5>
  s1
  s
  s2 <6>4 <4>8 <3>
  s1
}

basse = {
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
    \deux bes,1
  }
  \bar "|."
}


%% CONDUCTEUR     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new StaffGroup  <<
    \new Voice = "dessus" <<\override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \dessus >>
    \new Voice = "baryton" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \baryton >>
    \new Lyrics \lyricsto baryton { \lyrbar }
    \new Staff <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \figuremode { \bassefig }
      \basse
    >>
 >>
}