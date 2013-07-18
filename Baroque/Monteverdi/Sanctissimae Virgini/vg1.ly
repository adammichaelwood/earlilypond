\version "2.16.0"

#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\paper {
  line-width    = 190\mm
  left-margin   = 10\mm
  top-margin    = 10\mm
  bottom-margin = 20\mm
  ragged-last-bottom = ##t 
  ragged-bottom = ##f
  annotate-spacing = ##f
  #(define page-breaking ly:page-turn-breaking)
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