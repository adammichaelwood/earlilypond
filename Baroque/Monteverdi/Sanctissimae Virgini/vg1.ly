%%  vg1.ly
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

\version "2.16.0"

#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\paper {
  line-width    = 188\mm
  left-margin   = 10\mm
  top-margin    = 10\mm
  bottom-margin = 20\mm
  ragged-last-bottom = ##t 
  ragged-bottom = ##f
  annotate-spacing = ##f
  #(define page-breaking ly:page-turn-breaking)
  first-page-number = #3
  print-first-page-number = ##t
}

%\include "gregorian.ly"

\header {
  tagline = ""
}

\bookpart {
  \header {
    title = "I. Deus in adjutorium"
  }
  
  \score {
    \new Voice = "cantus" \with {
      \remove "Stem_engraver"
      \remove "Time_signature_engraver"
    }
    <<
      \relative c' {
        \clef "G_8"
        \cadenzaOn
        d^\markup{\bold \italic{Intonatio}} d \breathe d d d <d e>
        d d d d d <cis d> d \bar "||"
        \cadenzaOff
      }
      \new Lyrics \lyricsto "cantus" {
        De- us in ad- ju- to- _ rium me- um in- ten- de
      }
    >>
  }
  
  \score {
    <<
      \new Voice = "I" {
        \transpose d e {\relative c' {
          \override Staff.TimeSignature #'style = #'()
          \override BreathingSign #'text = \markup {
            \musicglyph #"scripts.caesura.straight"
          }
          \set Score.currentBarNumber = #1
          \time 2/2
          \key d \major
          \clef alto
          r4 fis d2
          r fis4 d16 [d d d]
          a4 d16 [d d d] a4 d16 [d d d]
          a4 d d a
          d d a fis'\break
          d16 [d d d] a4 d16 [d d d] a4
          d16 [d d d] d4 d2
          d1 \breathe
          \clef alto
          \tempo \markup {\concat {"2/" \smaller \general-align #Y #DOWN \note #"2." #1 " " \bold \italic "Ritornello"}}
          \time 6/4
          r2 fis4 g2 g,4
          d'2 fis4 e2 e4 \break
          \time 2/2
          d2 d4 d
          a'1
          a \breathe
          \clef alto
          r4 fis4 d2
          r2 fis4 d16 [d d d]
          a4 d16 [d d d] a4 d16 [d d d]
          a4 d d a
          d d a d
          d a d16 [d d d] a4
          d16 [d d d] a4 d16 [d d d] a4
          d16 [d d d] d4 d16 [d d d] d4 \break
          d1 \breathe
          \clef alto
          \tempo \markup {\concat {"2/" \smaller \general-align #Y #DOWN \note #"2." #1 " " \bold \italic "Ritornello"}}
          \time 6/4
          r2 fis4 g2 g,4
          d'2 fis4 e2 e4
          \time 2/2
          d2 d4 d
          a'1
          a \breathe \break
          \clef alto
          r4 fis4 d2
          r4 fis d16 [d d d] a4
          d16 [d d d] a4 d16 [d d d] a4
          d16 [d d d] a4 d16 [d d d] d4 \break
          a d d a
          d d a d
          d a d d
          a d d2
          r4 fis d16 [d d d] a4 \break
          d16 [d d d] a4 d16 [d d d] a4
          d a d2
          r4 d8 [a] d4 d8 [a]
          d2. fis4
          d16 [d d d] a4 d16 [d d d] a4 \break
          a16 [a a a] a16 [a a a] a2 ~
          a \breathe d
          b g
          \tempo \markup {\concat {"2/" \smaller \general-align #Y #DOWN \note #"2." #1 }}
          \time 6/4
          d'2 d4 b2 e,4
          a2 a4 a2 a4 \break
          \time 2/2
          \override BreathingSign #'text = \markup { \musicglyph #"scripts.rvarcomma" }
          a2 \breathe b4 b
          e,1
          d \breathe
          d' ~
          d2 d
          d1
          \cadenzaOn
          \override NoteHead #'style = #'neomensural
          d\breve\fermata \bar "|."
          \cadenzaOff
        }}
    }
    \new Lyrics \lyricsto "I" {
      _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
      _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
      _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
      _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
      _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
      _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
      _ _ _ _ _ _ _ _ _
      Al- le- lu- ja, Al- le- lu- ja, Al- le- lu- ja,
      Al- le- lu- ja, Al- le- lu- ja.
    }
    >>
  }
}

\bookpart {
  \markup{""}
  \paper {
    print-page-number = ##f
  }
}

\bookpart {
  \header {
    title = \markup { \center-column {"II. Dixit Dominus - Psalm 109" \small "sex vocibus et sex instrumentis"}}
  }
  
  \score {
    <<
      \new Voice = "DixitUn" {
        \transpose a b {\relative c' {
          \clef alto
          \key a \minor
          \time 4/2
          \set Score.skipBars = ##t
          R\breve*12
          \time 6/4
          R1.*6
          \time 9/4
          R4*9
          \time 2/2
          \autoBeamOff
          \override NoteHead #'style = #'neomensural
          r8 d d d d4 d8 d \break
          \autoBeamOn
          \time 4/2
          \override NoteHead #'style = #'default
          b2 c4. b8 a [b c a] b4. a8
          g [a b g] a4. g8 fis8 [g a fis!] g4. f8
          e1 e ~
          e1 c'4.^\markup{"Ritornello"} b8 a [b c a] \break
          b4. a8 g [a b g] a2 a4 a
          g2 g4 g f2 f4 a
          e1 e
          R\breve*16 \break
          \autoBeamOff
          \cadenzaOn
          \override NoteHead #'style = #'neomensural
          e'4 e e e e8 e e4 e e e e2 e4 \bar "|" \noBreak
          \cadenzaOff
          \time 6/4
          R1.*6 \noBreak
          \time 9/4
          R4*9 \noBreak
          \time 7/2
          \cadenzaOn
          r2 b4 b b8 b b b b4 b8 b b4 b8 b b4 b8 b b4 b8 b \bar "|" \break
          \override NoteHead #'style = #'default
          \cadenzaOff
          \autoBeamOn
          \time 4/2
          \set Score.currentBarNumber = #53
          r1 r2 a4 g8 [f]
          e4 f g2. g4 d'2
          r2 g,4 c b a b2
          a1 c4^\markup{Ritornello} d e d8 [c] \break
          b4 a8 [g] a1 e'4 d8 [c]
          b4 a b e, e1
          R2*4*15
          \time 2/2
          \autoBeamOff
          \override NoteHead #'style = #'neomensural
          a!8. a16 a8. a16 a4 a
          \override NoteHead #'style = #'default
          \autoBeamOn
          \time 4/2
          %\allowPageTurn
          \pageBreak
          R2*4*4
          \autoBeamOff
          \override NoteHead #'style = #'neomensural
          r4 b b b8 b b4 b b8 b b b
          \override NoteHead #'style = #'default
          \autoBeamOn
          b4. c8 d4. c8 a4. b8 c4. b8
          g4. a8 b4. a8 fis4. g8 a2 \break
          b e, e1
          r4^\markup{Ritornello} e'4. d8 b4. c8 d4. c8 a4~
          a8 [b] c4. b8 gis2 a4 b2
          \time 2/2
          a1 \bar "||" \break
          \time 4/2
          \autoBeamOff
          R2*4*4^\markup{TUTTI}
          r1 r
          e'4 c! a8. [b16 a8. b16] c4 c e c \noBreak
          a8. [b16 a8. b16] c8. [d16 c8. d16] e4 a,8 a a4 a \break
          b4. b8 a4 a d d8 d d2
          a1 ~ a
          R2*4*3
          r1 r2 c \break
          a c a e'
          c e c4 e2 b4
          a a d2 d4 d g,2
          << d'\breve { s4 s4^\> s2 s s\! } >>
          \time 3/2
          \override NoteHead #'style = #'neomensural
          r4 a8 a a4 a8 a a4 a
          \override NoteHead #'style = #'default
          \time 4/2
          R2*4*3
          \time 3/2
          R2*3
          \time 4/2
          \override NoteHead #'style = #'neomensural
          b2 d4. d8 d4 d8 d d4 d
          \override NoteHead #'style = #'default
          \autoBeamOn
          \pageBreak
          R2*4*4
          \key d \minor
          R2*4*3^\markup{GLORIA}
          \time 2/2
          R1
          \time 4/2
          R2*4*3 \break
          \key a \minor
          a4.^\markup{TUTTI} g8 f4. g8 a1
          a2 a4. g8 f4. g8 a4. g8
          f1. d2
          a'1 d\break
          a4. g8 f2. d4 f4. d8
          a'4. g16 [f] e4 a2 fis fis4
          g2. a4 b2 e,
          fis2. e4 d1\break
          d4. e8 f!4. g8 a2 f
          d4. e8 f4. g8 a4. g8 f2
          d f1 a2 \noBreak
          cis4 e2 a, d, f4\break
          e2 g f1\noBreak
          a~a\noBreak
          a~a
          e~e \bar"|."
        }
      }}
      \new Lyrics \lyricsto "DixitUn" {
        sca- bel- lum pe- dum tu o-
        __ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
        _ _ _ _ _ _ rum
        _ _ _ _ _ _ _ _ _ _ _ _ _ _
        _ _ _ _ _ _ _ _ _
        \override LyricText #'font-size = #-2
        Te- cum prin- ci- pi- um in di- e vir- tu -tis
        in splen- do- ri- bus sanc- to- rum ex u- te- ro
        an- te lu- ci- fe- rum
        \override LyricText #'font-size = #0
        ge- __ _ _ _ _ _ nu- i ge- nu- i __ _ _ te.
        _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
        Do- mi- nus a dex- tris
        con- fre- git in di- e i- rae su- ae re-
        __ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ges
        _ _ _ _ _ _ _ _ _ _ _ _ _ _
        iu- di- ca- __ _ bit iu- di- ca- __ _ _ bit
        in na- ti- o- ni- bus, im- ple- bit ru- i- nas,
        con- quas- sa- bit con- quas- sa- bit ca- pi- ta
        in ter- ra mul- to- rum.
        De tor- ren- te in vi- a
        prop- te- re- a e- xal- ta- bit
        Sic-  __ _ _ _ _ ut,
        sic- __ _ _ _ _ _ _ ut e- rat
        in __ _ _ prin- ci- pi- o, __ _ _ _ et nunc et
        sem- __ _ _ _ per, __ _ _
        et __ _ _ _ _ in sae- __ _ _ _ _ _ _ cu- la
        sae- cu- lo- rum. sae- cu- lo- rum.
        A- men,
        A- men.
      }
      
      \new Voice = "DixitDeux" {
        \transpose a b {\relative c' {
          \clef alto
          \key a \minor
          \time 4/2
          \set Score.skipBars = ##t
          R\breve*12
          \time 6/4
          R1.*6
          \time 9/4
          R4*9
          \override NoteHead #'style = #'neomensural
          \autoBeamOff
          r8 b b b b4 b8 b
          \autoBeamOn
          \time 4/2
          \override NoteHead #'style = #'default
          d4 b e2 r4 a,4 d2
          r4 g, c2 r b
          r4 e, a2 e4 e'4. d16 [c] b4
          cis1 r
          r c!4. b8 a [b c a]
          b4. a8 g [a b g] a2 d
          b4 c b2 a1
          R\breve*16
          \autoBeamOff
          \cadenzaOn
          \override NoteHead #'style = #'neomensural
          c4 c c c c8 c c4 c c c c2 c4 \bar "|"
          \cadenzaOff
          \time 6/4
          R1.*6
          \time 9/4
          R4*9
          \time 7/2
          \cadenzaOn
          r2 d4 d d8 d d d d4 d8 d d4 d8 d d4 d8 d d4 d8 d \bar "|" \break
          \override NoteHead #'style = #'default
          \cadenzaOff
          \autoBeamOn
          \time 4/2
          r1 d4 c8 [b] a4 b
          c4 b8 [a] g4 a b g d2
          a' e2. e4 e2
          e1 r
          r2 f'4 e8 [d] c4 d e2 ~
          e4 d8 [c] b2 a1
          R2*4*15
          \time 2/2
          \autoBeamOff
          \override NoteHead #'style = #'neomensural
          a!8. a16 a8. a16 a4 a
          \override NoteHead #'style = #'default
          \autoBeamOn
          \time 4/2
          R2*4*4
          \autoBeamOff
          \override NoteHead #'style = #'neomensural
          r4 d d d8 d d4 d d8 d d d
          \override NoteHead #'style = #'default
          \autoBeamOn
          d1 c b r2 e2~
          e4 d8 [c] b2 a1
          r4 c4. b8 [g a] b2 a~
          a g e1
          \time 2/2
          e
          \time 4/2
          \autoBeamOff
          R2*4*4
          r1 r2 e'4 c
          a8. [b16 a8. b16] c4 c e c a8. [b16 a8. b16]
          c8. [d16 c8. d16] e4 a,8 c c4 c c4. c8
          e4 e e2 b4 b b2 c4. d8 e1.
          R2*4*3
          r1 c2 a
          c a e' c
          e c e4. e8 e,4 e'
          c2 b2. g4 b2~
          << {b e, e1} { s4 s4^\> s2 s s\! } >>
          \time 3/2
          \override NoteHead #'style = #'neomensural
          r4 c'8 c c4 c8 c c4 c
          \override NoteHead #'style = #'default
          \time 4/2
          R2*4*3
          \time 3/2
          R2*3
          \time 4/2
          \override NoteHead #'style = #'neomensural
          g2 b4. b8 b4 b8 b b4 b
          \override NoteHead #'style = #'default
          \autoBeamOn
          R2*4*4
          \key d \minor
          R2*4*3
          \time 2/2
          R1
          \time 4/2
          R2*4*3
          \key a \minor
          d2 a d4. e8 f4. e8
          d1 a2 d~
          d a1 d4. e8
          f4. e8 d2 a2. f4~
          f d2 d' a4 a2~
          a a a a
          g2. a4 b2 e,
          c'\breve
          f,4. g8 a2 f d4. e8
          f4. g8 a4. g8 f2 d
          f4. g8 a1 r4 a~
          a cis e2 d1\break
          g, a2 c!~
          c4 f, a2 a1
          r2 c2. b4 a2
          b1~b
        }
      }}
      \new Lyrics \lyricsto "DixitDeux" {
        sca- bel- lum pe- dum tu o-
        __ _ _ _ _ _ _ _ _ _ _ _ _ _ _ rum
        _ _ _ _ _ _ _ _ _ _ _ _ _ _
        _ _ _ _
        \override LyricText #'font-size = #-2
        Te- cum prin- ci- pi- um in di- e vir- tu -tis
        in splen- do- ri- bus sanc- to- rum ex u- te- ro
        an- te lu- ci- fe- rum
        \override LyricText #'font-size = #0
        ge- __ _ _ _ _ _ _ _ _ _ _ _ _ _ _ nu- i te.
        _ _ _ _ _ _ _ _ _ _ 
        Do- mi- nus a dex- tris
        con- fre- git in di- e i- rae su- ae re-
        __ _ ges.
        re- __ _ _ _ ges
        _ _ _ _ _ _ _ _ _
        iu- di- ca- __ _ bit iu- di- ca- __ _ _ bit
        in na- ti- o- ni- bus, im- ple- bit ru- i- nas, __ _ _
        con- quas- sa- bit con- quas- sa- bit ca- pi- ta
        in ter- ra mul- to- __ _ rum.
        De tor- ren- te in vi- a
        prop- te- re- a e- xal- ta- bit
        Sic- ut e-  __ _ _ _ _ rat,
        sic- ut e- __ _ _ _ _ rat
        in prin- ci- pi- o,
        et nunc et
        sem- __ _ _ _ per,
        et __ _ _ in sae- __ _ _ _ _ _ _ cu- la __ _ _
        sae- cu- lo- rum. sae- cu- lo- rum.
        A- men,
        A- __ _ _ men.
      }
    >>
  }
}

\bookpart {
  \header {
    title = \markup { \center-column {"IV. Psalmus 112: Laudate pueri" \small "octo vocibus"}}
  }
  
  \score {
    <<
      \new Voice = "LaudateUn" {
        \transpose c d {\relative c' {
          \clef alto
          \key c \major
          \time 4/4
          \set Score.skipBars = ##t
          R4*4*5
          \override Staff.TimeSignature #'stencil = ##f
          \time 4/2
          r1 r4 d a2
          e'4 c4. c8 c4 r2 d4 g,
          g1 r\break
          R2*4*3
          r1 r4 g g g
          g2 g r4 d2 d4
          d1 r\break
          R2*4*29
          \override Staff.TimeSignature #'stencil = ##t
          \time 2/2
          R1
          \time 9/4
          R4*9
          \time 6/4
          R4*6\break
          \time 4/4
          R4*4*2
          \time 2/2
          R1
          \time 6/4
          R4*6*2
          \time 2/2
          R1 \break
          \time 4/4
          R4*4*14
          \time 9/4
          R4*9
          \time 6/4
          R4*6*10
          \time 4/4
          R4*4*4\break
          \time 6/4
          R4*6*14
          \time 4/4
          R4*4*18\bar "|."
        }}
      }
      \new Lyrics \lyricsto "LaudateUn" {
        lau- da- te pu- e- ri
        Do- mi- num:
        lau- da- te no- men
        Do- mi- ni.
      }
      
      \new Voice = "LaudateDeux" {
        \transpose c d {\relative c {
          \clef bass
          \key c \major
          \time 4/4
          \set Score.skipBars = ##t
          R4*4*5
          \override Staff.TimeSignature #'stencil = ##f
          \time 4/2
          R2*4
          r4 c4. c8 c4 g'2. g4
          c,1 r
          R2*4*3
          r1 r4 c' c c
          g2. e4 a2 d,
          g1 r\break
          R2*4*29          
          \override Staff.TimeSignature #'stencil = ##t
          \time 2/2
          R1
          \time 9/4
          R4*9
          \time 6/4
          R4*6\break
          \time 4/4
          R4*4*2
          \time 2/2
          R1
          \time 6/4
          R4*6*2
          \time 2/2
          R1 \break
          \time 4/4
          R4*4*14
          \time 9/4
          R4*9
          \time 6/4
          R4*6*10
          \time 4/4
          R4*4*4\break
          \time 6/4
          R4*6*14
          \time 4/4
          R4*4*18\bar "|."
        }}
      }
      \new Lyrics \lyricsto "LaudateDeux" {
        pu- e- ri
        Do- mi- num:
        lau- da- te no- men
        Do- mi- ni.
      }
    >>
    \header {
      piece = "Violes"
    }
  }
}

\bookpart {
  \header {
    title = \markup { \center-column {"VI. Psalmus 121 : Laetatus sum"}}
  }
  
  \score {
    <<
      \new Voice = "VioleUn" {
        \set Staff.instrumentName = "Viole 1"
        \transpose d e {\relative c' {
          \clef alto
          \key d \minor
          \time 4/2
          \set Score.skipBars = ##t
          R2*4*94
          \key c \major
          r1 r4 g4.^\markup{TUTTI} a8 b4~
          b8 [c] d4. c8 b4. a8 g2 g4
          g4 c4. d8 e4. f8 g4. f8 e4~\noBreak
          e8 [d] c2 g4 b2 b~\break
          b4 b a2 b e,
          \key d \minor
          a1 r
          d2 a bes a~
          a1 e4. f8 g2
          d1 d2 r\break
          r2 bes' c d
          g, g a d,
          d1 ~ d
          \override NoteHead #'style = #'neomensural
          \autoBeamOff
          r4 bes'8 bes bes bes bes bes bes4. bes8 bes4 bes\break
          \autoBeamOn
          \override NoteHead #'style = #'default
          ees1. d2
          c1 d
          d4 a bes f8 [f] d'4 a bes f8 [f]
          f4 fis g gis a1
          d, r2 g4 d
          ees bes'8 [bes] bes4 bes d2 a
          a d, d1
          r1 g~
          g g\bar "|."
        }}
      }
      \new Lyrics \lyricsto "VioleUn" {
        Glo- __ _ _ _ _ _ _ _ _ ri- a,
        glo- __ _ _ _ _ _ _ _ _ ri- a
        Pa- tri, et Fi- li- o,
        et Spi- ri- tu- i __ _ _ Sanc- to,
        et Spi- ri- tu- i Sanc- __ _ to.
        Si- cut e- rat in prin- ci- pi- o, et
        nunc, et sem- per
        et in sae- cu- la,
        et in sae- cu- la sae- cu- lo- rum,
        A- men
        et in- sae- cu- la, sae- cu- lo- rum,
        A- __ _ men.
        A- men.
      }
      
      \new Voice = "VioleDeux" {
        \set Staff.instrumentName = "Viole 2"
        \transpose d e {\relative c' {
          \clef alto
          \key d \minor
          \time 4/2
          \set Score.skipBars = ##t
          R2*4*94
          \key c \major
          r1 r4 b4. c8 d4~
          d8 [c] b4. a8 g4. a8 b2 b4
          e e4. f8 g4. f8 e4. d8 c4~
          c8 [d] e2 c4 d2 d~
          d4 d d2 g, g
          \key d \minor
          d'1 r
          bes2 c d c~
          c1 g4. a8 bes [a bes g]
          a1 b2 r
          r d a8 [bes c a] d4 d,
          e2 c1 g'2
          a1 g
          \override NoteHead #'style = #'neomensural
          \autoBeamOff
          r4 d'8 d d d d d d4. d8 d4 d
          \autoBeamOn
          \override NoteHead #'style = #'default
          g,2. a4 bes2. f4
          g1 g
          r2 d'4 a bes f8 [f] r2
          R2*4
          r2 d'4 a bes f8 [f] g4 bes
          g d'8 [d] bes4 d d,2 e
          a1 g
          r1 r2 ees'2~
          ees4 d c2 d1
        }}
      }
      \new Lyrics \lyricsto "VioleDeux" {
        Glo- __ _ _ _ _ _ _ _ _ ri- a,
        glo- __ _ _ _ _ _ _ _ _ ri- a
        Pa- tri, et Fi- li- o,
        et Spi- ri- tu- i __ _ _ _ _ _ Sanc- to,
        et Spi- __ _ _ _ _  ri- tu- i Sanc- __ _ to.
        Si- cut e- rat in prin- ci- pi- o, et
        nunc, __ _ _ et sem- per
        et in sae- cu- la,
        et in sae- cu- la,
        et in- sae- cu- la, sae- cu- lo- rum,
        A- men.
        A- __ _ _ men.
      }
      
      \new Voice = "Violoncelle" {
        \set Staff.instrumentName = "Violoncelle"
        \transpose d e {\relative c' {
          \clef bass
          \key d \minor
          \time 4/2
          \set Score.skipBars = ##t
          R2*4*94
          \key c \major
          r1 g~
          g2 g g1
          c,1. c2 c1 g'
          g2 f e2. e4
          \key d \minor
          d1 r
          bes'2 f bes, f
          g4 a2 bes4 c2 g
          d'1 g,2 r
          r bes' f d
          c2. bes4 a2 g
          d'1 g,
          \override NoteHead #'style = #'neomensural
          \autoBeamOff
          r4 g'8 g g g g g g4. g8 g4 g
          \autoBeamOn
          \override NoteHead #'style = #'default
          ees1. bes2
          f1 bes
          R2*4
          R2*4
          r1 g'4 d ees bes8 [bes]
          g'4 d ees bes8 [bes] bes4 b c cis
          d1 g,
          r1 c~
          c g
        }}
      }
      \new Lyrics \lyricsto "Violoncelle" {
        Glo- ri- a, glo- ri- a
        Pa- tri, et Fi- li- o,
        et Spi- ri- tu- __ _ _ _ _ i Sanc- to,
        et Spi- ri- tu- __ _ _ i Sanc- to.
        Si- cut e- rat in prin- ci- pi- o, et
        nunc, et sem- per
        et in sae- cu- la,
        et in- sae- cu- la, sae- cu- lo- rum,
        A- men.
        A- men.
      }
    >>
    
    \layout{
      #(layout-set-staff-size 14)
    }
  }
}

\bookpart {
  \header {
    title = \markup { \center-column {"VIII. Nisi Dominus à 10"}}
  }
  
  \score {
    <<
      \new Voice = "NisiUn" {
        \transpose f g {
          \relative c' {
            \clef alto
            \key f \major
            \time 4/2
            a2 f4 c'2 a c4~
            c8 [bes] a4. g8 f4. g8 a2 f4
            d2 d'2. bes2 d4~
            d8 [c] bes4. c8 d2 d4 d2~
            d d d a
            cis2. cis4 cis1
            r2 a fis2. fis4~
            fis d2 d4 d1\break
            d1 d~
            d r4 a'2 c4~
            c f,4. g8 a4. bes8 c2 f,4~
            f8 [g] a4. bes8 c2 a f4~\break
            f c'4. bes8 a4. g8 f2 f4~
            f a2 f bes4. c8 d4~
            d8 [e] f4. e8 d4. c8 bes2 bes4
            c2 c,2. d4 e f\break
            g2 c, c1~
            c r
            \set Score.skipBars = ##t
            R2*4*43
            \time 6/4
            R4*6*4
            \time 9/4
            R4*9
            \time 2/2
            R1
            \time 4/2
            R2*4
            \time 6/4
            R4*6*12\break
            \time 4/2
            R2*4
            \tempo "Ample et détendu"
            g'4. a8 bes4. c8 d2 d
            g, ees8 [d ees c] d1
            ees2 f ees2. ees4 \pageBreak
            g1 r2 g
            bes c f, bes
            bes1~bes
            bes a2^\markup{T° Primo} f4 c'~\break
            c a2 c4. bes8 a4. g8 f4~
            f8 [g] a2 f4 r2 d'2~
            d4 bes2 d4. c8 bes4. c8 d4~
            d d d1 d2\break
            d a cis1~
            cis r2 a
            fis2. fis2 d d4
            d1~d\break
            d~d
            r4 a'2 c f,4. g8 a4~
            a8 [bes] c4. c8 f,4. g8 a4. bes8 c4~
            c a2 f c'4. bes8 a4~\break
            a8 [g] f2 f4 f a2 f4~
            f bes4. c8 d4. e8 f4. e8 d4~
            d bes bes2 c c,
            c4 d e f g2 c,\break
            c1 c'2. bes4
            a2. g4 f2. e4
            d2. e4 f1
            f1~f\bar "|."
          }
        }
      }
      \new Lyrics \lyricsto "NisiUn" {
        Ni- si, ni- si Do- __ _ _ _ _ _ _ mi- nus,
        ni- si Do- __ _ _ _ _ mi- nus
        ae- di- fi- ca- ve- rit,
        ae- di- fi- ca- ve- rit,
        do- mum,
        in va- num __ _ _ _ _
        la- __ _ _ _ _ bo- ra- ve- __ _ _ _ _ runt
        qui ae- di- __ _ _ _ _ _ _ _ _ fi- cant
        e- __ _ _ _ _ _ am.
        Glo- __ _ _ _ _ ri- a
        Pa- __ _ _ _ _ tri, et Fi- li- o,
        et Spi- ri- tu- i Sanc- to.
        Sic- ut, sic- ut e- __ _ _ _ _ _ _ rat,
        sic- ut e- __ _ _ _ _ rat in prin- ci- pi- o,
        et nunc, et nunc, et sem- per,
        et in sae- __ _ _ _ _ cu- la, __ _ _ _ _
        et in sae- __ _ _ _ _ cu- la
        sae- cu- lo- __ _ _ _ _ _ _ _ rum,
        sae- cu- lo- __ _ _ _ _ _ rum.
        A- __ _ _ _ _ _ _ _ _ men.
      }
      
      \new Voice = "NisiDeux" {
        \transpose f g {
          \relative c' {
            \clef alto
            \key f \major
            \time 4/2
            r4 c2 a c4. bes8 a4~
            a8 [g] f4. g8 a4. bes8 c2 a4
            bes4 d2 bes d4. c8 bes4~
            bes d2 g,4. a8 bes4. c8 d4
            r2 f d f4. f8
            e4 e2 cis a cis4~
            cis8 [d] e2 a,4 a2. d4~
            d a2 a4 bes2 bes4 a
            g2 d4. e8 fis1~
            fis r2 r4 a4~
            a c2 f,4. g8 a4. bes8 c4~
            c f,4. g8 a4. bes8 c2 a4~
            a f2 c' a4. bes8 c4~
            c c2 c4 bes2. bes4
            bes1 bes2. g4
            c1 c2 c
            g1 a~
            a r
            \set Score.skipBars = ##t
            R2*4*43
            \time 6/4
            R4*6*4
            \time 9/4
            R4*9
            \time 2/2
            R1
            \time 4/2
            R2*4
            \time 6/4
            R4*6*12\break
            \time 4/2
            R2*4
            g4. a8 bes4. c8 d2 d
            g, ees8 [d ees c] d1
            ees2 f ees2. ees4
            ees1 r2 g
            bes c f, bes
            bes1~bes
            bes r4 c2 a4~
            a c4. bes8 a4. g8 f4. g8 a4~
            a8 [bes] c2 a4 r d2 bes4~
            bes d4. c8 bes4. c8 d2 g,4~
            g8 [a] bes4. c8 d4 r2 f2
            d f e4 e2 cis4~
            cis a4. b8 cis4. d8 e2 a,4
            a2. d2 a a4
            bes2. a4 g2 d4. e8
            fis1~fis
            r2 r4 a2 c f,4~
            f8 [g] a4. bes8 c4. c8 f,4. g8 a4~
            a8 [bes] c2 a f c'4~
            c8 [bes] a4. bes8 c2 c4 c2
            bes1. bes2
            bes2. g4 c2 c~
            c c g1
            a r2 c2~
            c4 bes a2. g4 f2~
            f4 e d2. e4 f2
            a1~a
          }
        }
      }
      \new Lyrics \lyricsto "NisiDeux" {
        Ni- si, Do- __ _ _ _ _ _ _ _ _ mi- nus,
        ni- si Do- __ _ _ mi- nus __ _ _ _ _
        ni- si Do- mi- nus
        ae- di- fi- ca- __ _ _ ve- rit,
        ae- di- fi- ca- ve- rit,
        do- mum, __ _ _
        in va- num __ _ _ _ _
        la- __ _ _ _ _ bo- ra- ve- runt __ _ _
        qui ae- di- fi- cant
        qui ae- di- fi- cant
        e- am.
        Glo- __ _ _ _ _ ri- a
        Pa- __ _ _ _ _ tri, et Fi- li- o,
        et Spi- ri- tu- i Sanc- to.
        Sic- ut, e- __ _ _ _ _ _ _ _ _ rat,
        sic- ut e- __ _ _ _ _ rat __ _ _ _ _
        sic- ut e- rat in prin- ci- __ _ _ _ _  pi- o,
        et nunc, et sem- __ _ _ per, __ _ _
        et in sae- __ _ _ _ _ cu- la, __ _ _ _ _
        et in sae- __ _ _ _ _ cu- la
        et in sae- cu- la sae- cu- lo- rum,
        A- __ _ _ _ _ _ _ _ _ men.
      }
    >>
    \header {
      piece = "Violes"
    }
  }
}

\bookpart {
  \header {
    title = \markup { \center-column {"X. Lauda Jerusalem, Dominum (Ps.147)"}}
  }
  
  \score {
    <<
      \new Voice = "JerusalemTenor" {
        \set Voice.fontSize = #-2
        \override Staff.StaffSymbol #'staff-space = #(magstep -2)
        \set Staff.instrumentName = "Ténor"
        \transpose g a {
          \relative c' {
            \clef "G_8"
            \key g \minor
            \time 4/2
            d2. bes4 r1
            f2 g bes4 c2 bes4
            bes2 a4. g8 bes2 r
            R2*4
            r1 d2. bes4\break
            r1 bes2 bes4 bes~
            bes bes bes g bes2 a
            g r r1
            R2*4
            R2*4\break
            \set Score.skipBars = ##t
            R2*4*43
            g1^\markup{TUTTI} c2 g~
            g4 a bes2 aes1
            g2 c f,1~
            f2 f g g\break
            d'\breve
            bes1 bes
            ees2. ees4 ees1
            ees2 c g4 a bes c
            d1 g,\pageBreak
            g2. g4 g1~
            g2 a c g4 a
            bes c d g, g1
            bes2.^\markup{TUTTI} bes4 d4. d8 d4 d
            d4. d8 d2 bes g~\break
            g g d'4. ees8 f2~
            f4 ees8 [d] c2 bes d~
            \autoBeamOff
            d4 d d d8 d d4 d d2~
            d d bes1
            c d\break
            bes2. g4 g g8 g g4 g
            g1 g
            r2 d'2. c8 [bes] a2
            b1 r
            ees2 d ees r\break
            c4. bes16 [a] g2 a r
            f1 f
            r2 d'4. c8 bes4. a8 g2
            d'2. c8 [bes] a1
            d\breve \bar "|."
          }
        }
      }
      \new Lyrics \lyricsto "JerusalemTenor" {
        \override LyricText #'font-size = #-1
        Lau- da, lau- da Je- ru- sa- lem, Do- mi- num.
        Lau- da, lau- da De- um tu- um Si- __ _ on.
        Glo- ri- a __ _ _
        Pa- tri et Fi- li- o, et Fi- li- o,
        et Spi- ri- tu- i Sanc- __ _ _ _ _ to,
        et Spi- ri- tu- i Sanc- __ _ _ _ _ _ to.
        Sic- ut e- rat in prin- ci- pi- o et nunc
        et sem- __ _ _ _ _ _ per,
        et in sae- cu- la sae- cu- lo- rum.
        A- __ _ men.
        Et in sae- cu- la sae- cu- lo- rum,
        A- __ _ _ men,
        A- __ _ men,
        A- __ _ _ men,
        A- men,
        A- __ _ _ _ _ _ _ _ men.
      }
      
      \new Voice = "JerusalemVioleUn" {
        \set Staff.instrumentName = "Viole 1"
        \transpose g a {
          \relative c' {
            \clef "alto"
            \key g \minor
            \time 4/2
            r1 d2 d
            R2*4
            r1 r2 c
            g ees'4 ees2 g4 g2
            c,4. c8 d2 r1
            d2 d r1
            R2*4
            r2 d d4 d2 d4
            bes2 bes4 d2 c8 [bes] a2
            b1 r
            \set Score.skipBars = ##t
            R2*4*43
            ees2. f4 g2. f4
            ees2. d4 c1
            c2 c f2. ees4
            d ees f d ees1
            ees2 bes ees4 d8 c] bes4 c
            d ees f4. f8 ees2 r2
            R2*4
            R2*4
            R2*4
            R2*4
            R2*4
            R2*4
            d2. d4 bes4. bes8 bes4 bes
            bes4. bes8 bes1 bes2
            ees1 f
            f d
            r bes'2. bes4
            \autoBeamOff
            bes bes8 bes bes4 bes bes bes f4. g8
            a1 d,
            ees2. ees4 ees ees8 ees ees4 ees
            ees1 bes
            ees\breve
            d1 ees2 d
            ees r ees d
            c1 c
            d2 c d c
            d2. a'2 g4 g2~
            g fis4 e fis1
            a\breve
          }
        }
      }
      \new Lyrics \lyricsto "JerusalemVioleUn" {
        Lau- da, lau- da- Je- ru- sa- lem, Do- mi- num.
        La- da, lau- da De- um tu- um Si- __ _ _ _ on.
        Glo- __ _ _ _ _ _ _ ri- a
        Pa- __ _ _ _ _ _ _ tri
        et Fi- __ _ _ _ _ _ _ _ li- o
        Si- cut e- rat in prin- ci- pi- o
        et nunc et sem- per,
        et in sae- cu- la sae- cu- lo- rum.
        A- __ _ _ men.
        Et in sae- cu- la sae- cu- lo- rum.
        A- men
        A- __ _ men.
        A- __ _ _ men,
        A- __ _ _ _ men,
        A- __ _ _ _ _ _ men.
      }
      
      \new Voice = "JerusalemVioleDeux" {
        \set Staff.instrumentName = "Viole 2"
        \transpose g a {
          \relative c' {
            \clef "bass"
            \key g \minor
            \time 4/2
            r1 bes2 bes,
            R2*4
            r1 r2 f'
            ees ees4 c2 g'4 g2
            f4. f8 bes,2 r1
            bes'2 bes, r1
            R2*4
            r2 bes'2 bes4 bes2 bes4
            bes ees, bes4. c8 d1
            g, r
            \set Score.skipBars = ##t
            R2*4*43
            c1. c2
            ees1 aes,2. bes4
            c1 bes
            r2 bes' ees,2. f4
            g2. a4 bes2. bes4
            bes,1 r
            R2*4
            R2*4
            R2*4
            R2*4
            R2*4
            R2*4
            g'2. g4 g4. g8 g4 g
            g4. g8 g1 ees2
            c1 d
            f bes,
            \autoBeamOff
            bes'2. bes4 bes4 bes8 bes bes4 bes
            bes2. g4 bes1
            a g
            ees2. ees4 ees ees8 ees ees4 ees
            ees1. ees2
            bes2. c4 d1
            g, r
            ees'4. f8 g2 c, r
            a4. bes8 c2 f r
            d4. ees8 f2 bes, r
            bes4. c8 d2 g, g'
            f\breve
            a\breve
          }
        }
      }
      \new Lyrics \lyricsto "JerusalemVioleDeux" {
        Lau- da, lau- da- Je- ru- sa- lem, Do- mi- num.
        La- da, lau- da De- um tu- um Si- __ _ _ on.
        Glo- ri- a
        Pa- __ _ _ tri
        et Fi- __ _ _ _ _ li- o
        Si- cut e- rat in prin- ci- pi- o
        et nunc et sem- per,
        et in sae- cu- la sae- cu- lo- rum.
        A- __ _ men.
        Et in sae- cu- la sae- cu- lo- rum.
        A- __ _ _ men
        A- __ _ _ men.
        A- __ _ _ men,
        A- __ _ _ men,
        A- __ _ _ men,
        A- __ _ men.
      }
    >>
  }
}

\bookpart {
  \header {
    title = \markup { \center-column {"XII. Hymnus: Ave maris stella"}}
  }
  
  \score {
    <<
      \new Voice = "HymnusUn" {
        \transpose c d {
          \relative c' {
            \clef alto
            \key c \major
            \time 4/2
            \set Staff.instrumentName = "Viole 1"
            \set Score.skipBars = ##t
            <<{s4^\markup{Versus 1}}{R2*4*8}>>
            \time 3/1
            R1*3
            \time 4/2
            R2*4*3
            \time 3/1
            R1*3
            \time 4/2
            R2*4*2
            \time 3/1
            R1*3
            \bar "||"
            \time 6/4
            <<{s4^\markup{Versus 2}}{R4*6*10}>>
            <<{s4^\markup{Ritornello}}{R4*6*10}>>
            <<{s4^\markup{Versus 3}}{R4*6*10}>>
            \bar "||"\break
            d4^\markup{Ritornello} e f e2 g4
            e2 d4 e2 f4
            e2. e4 a, e'
            c2 c4 d2 a4
            d2 d4 e2. \break
            e2 f4 e a, a
            c2 c4 a d2
            e2. e4 b c
            g2 a4 e f d
            g e a a2.\bar "||" \break
            <<{s4^\markup{Versus 4}}{R4*6}>>
            R4*6
            R4*6
            R4*6
            R4*6 \break
            R4*6
            R4*6
            R4*6
            R4*6
            R4*6
            \bar "||" \break
            <<{s4^\markup{Ritornello}}{R4*6*10}>>
            \set Score.skipBars = ##f
            <<{s4^\markup{Versus 5}}{\set Score.skipBars = ##t R4*6*10}>>
            \bar "||" \pageBreak
            <<{s4^\markup{Ritornello}}{R4*6}>>
            R4*6
            R4*6
            R4*6
            R4*6 \break
            R4*6
            R4*6
            R4*6
            R4*6
            R4*6
            \bar "||" \break
            <<{s4^\markup{Versus 6}}{R4*6*10}>>
            \time 4/2
            a2^\markup{Versus 7 - TUTTI} ~ a4 d2 d4 d2
            b1 b~
            b2 b e a,
            e'4 b c8 [a] e'2 d8 [c] b2 \break
            cis1~cis
            a e2 d4. e8
            f2 e r1
            r4 a2 d,4 a'4. g8 f [g] a4~
            \time 3/1
            a e a2 a1~a \break
            \time 4/2
            a2. g4 f2 c'
            c1. b4 a
            b2 a4 g a2 c
            \time 3/1
            g1 g~g
            \time 4/2
            g2 c, g'2. e4 \break
            e2 e~e4 a2 d,4
            \time 3/1
            e1 fis2. g4 a1
            \time 4/2
            a~a
            g~g
            a~a\bar "|."
          }
        }
      }
      \new Lyrics \lyricsto "HymnusUn" {
        _ _ _ _ _ _ _ _ _ _ _ _ _ _
        _ _ _ _ _ _ _ _ _ _ _ _ _ _
        _ _ _ _ _ _ _ _ _ _ _ _ _ _
        Sit __ _ laus De- o
        Pa- tri,
        Sit laus De- o Pa- __ _ _ _ _ _ tri,
        Sum- mo Chri- __ _ _ sto
        Sum- mo Chri- __ _ _ _ _ sto de- cus,
        Spi- __ _ _ ri- tu- __ _ _ _ _ _ _ i
        San- cto,
        Tri- bus ho- nor u- nus
        ho- nor u- nus. __ _ _
        A- __ _ men.
      }
      
      \new Voice = "HymnusDeux" {
        \transpose c d {
          \relative c {
            \clef bass
            \key c \major
            \time 4/2
            \set Staff.instrumentName = "Viole 2"
            \set Score.skipBars = ##t
            R2*4*8
            \time 3/1
            R1*3
            \time 4/2
            R2*4*3
            \time 3/1
            R1*3
            \time 4/2
            R2*4*2
            \time 3/1
            R1*3
            \bar "||"
            \time 6/4
            R4*6*10
            R4*6*10
            R4*6*10
            d4 a' d, a'2 bes4
            a2 d,4 a'2 d,4
            cis2. cis4 d e
            f2 e4 f g a
            bes2 bes4 a2.
            a2 d,4 a'2 d,4
            c4. b8 a8 [g] f4 g2
            c2. c'4 g a
            e2 f4 c d4. c8
            bes4 a2 d2.
            d2. g,4. a8 b!4
            c4. d8 e4 a, e'2
            a,2. a4 b cis
            d2 c!4 bes2.
            bes4 a2 d2.
            d2 c4 c4. b!8 a4
            g2 f g
            c2. c4. b8 a4
            g4. f8 e4 a4. b8 cis [a]
            d4 a2 d2.
            R4*6*10
            R4*6*10
            d4 a' d, a'2 bes4
            a2 d,4 a'2 d,4
            cis2. cis4 d e
            f2 e4 f g a
            bes2 bes4 a2.
            a2 d,4 a'2 d,4
            c4. b!8 a [g] f4 g2
            c2. c'4 g a
            e2 f4 c d4. c8
            bes4 a2 d2.
            R4*6*10
            \time 4/2
            d2 a'1 fis2
            d1 d2 d~
            d g1 e2~
            e e e1
            e~e
            e1. f2
            a1 g
            e2 d cis f
            \time 3/1
            e1 fis2. g4 a1
            \time 4/2
            f!2. e4 d2 g
            e1 a
            r a2 a
            \time 3/1
            d,4 d g2 e1~e
            \time 4/2
            e b'4. a8 g2
            c4. b8 a1 a2
            \time 3/1
            a1 a~a
            \time 4/2
            a4 g fis e d2 d'~
            d4 c bes2. a4 g d
            d1~d
          }
        }
      }
      \new Lyrics \lyricsto "HymnusDeux" {
        _ _ _ _ _ _ _ _ _ _ _ _ _ _
        _ _ _ _ _ _ _ _ _ _ _ _ _ _
        _ _ _ _ _ _ _ _ _ _ _ _ _ _
        _ _ _ _ _ _ _ _ _ _ _ _ _ _
        _ _ _ _ _ _ _ _ _ _ _ _ _ _
        _ _ _ _ _ _ _ _ _ _ _ _ _ _
        _ _ _ _ _ _ _ _ _ _ _ _ _ _
        _ _ _ _ _ _ _ _ _ _ _ _ _ _
        _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
        Sit __ _ laus De- o
        Sit laus De- o Pa- tri,
        Sum- mo Chri- sto
        de- __ _ _ _ _ cus, __ _ _
        Spi- ri- tu- i San- cto,
        Spi- ri- tu- i San- cto,
        Tri- bus __ _ _ ho- __ _ _ nor u- nus
        A- __ _ _ _ _ _ _ _ _ _ _ men.
      }
    >>
  }
}

\bookpart {
  \header {
    title = \markup { \center-column {"Magnificat - 12 - Sicut erat"}}
  }
  
  \score {
    <<
      \new Staff {
        \transpose c d {
          \relative c' {
            \clef alto
            \key c \major
            \time 4/4
            \set Staff.instrumentName = "Viole"
            r1
            a~
            a2 a
            a1~
            a
            a~
            a
            r1
            a2. b4 \break
            c2 a
            e'4 d c b
            a2. b4
            cis2 d
            d1
            r1
            r
            r
            g,2 d'~\break
            d d,
            a'2. e4
            f1
            e2 a~
            a a
            a2. a4
            a1~
            a2 b~
            b c
            a1\break
            b2 c~
            c4 a d2
            a1
            a
            r
            r
            r
            r
            r\break
            r
            r
            r
            r
            c~
            c2 c
            c1~
            c2 c
            c1~\break
            c2 bes4 a
            d c bes a8 [g]
            c4. bes8 a4. g8
            f4. e8 d2
            a'4. g8 f4 e8 [d]
            e1
            fis \bar "||"
            r1\break
            r2 d'4. c8
            bes [a] bes4 bes4. a8
            g [f] g4 g2~
            g1
            c,4. d8 e2
            a4. b8 c2\break
            f,4. g8 a2
            d,4. e8 f2
            bes4. c8 d2
            d1
            d,2. e4
            fis1
            \bar "|."
          }
        }
      }
      
      \new Staff {
        \transpose c d {
          \relative c' {
            \clef alto
            \key c \major
            \time 4/4
            \set Staff.instrumentName = "Viole"
            r1
            r
            d1~
            d2 d
            d1~
            d
            d~
            d
            r2 a~
            a4 b c2
            a a4 g
            f g a2~
            a a
            g1
            r1
            g2 d'~
            d a
            bes1
            a~
            a~
            a
            r
            r
            r
            r
            r
            r
            r
            r
            r
            r2 a~
            a a
            a2. a4
            a1~
            a2 b~
            b c
            a1
            b2 c~
            c d
            a1
            a~
            a
            a~
            a2 a
            a2. a4
            a1~
            a
            bes
            c
            a~
            a~
            a
            a
            r2 d4. c8
            bes [a] bes4 bes4. a8
            g [f] g4 g4. a8
            b2 e,4. f8
            g2 c,4. d8
            e2 a4. b8
            c2 f,4. g8
            a2 d,4. e8
            f2 bes4. c8
            d2 g,4. a8
            bes1
            bes4. a8 g [f] g4
            a1
          }
        }
      }
    >>
  }
}
