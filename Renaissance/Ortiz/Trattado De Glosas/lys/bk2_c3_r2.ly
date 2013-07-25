\version "2.12.3"

\tocItem \markup\italic{"            Recercata seconda sopra li detti tenori"}

\score {
  <<
    \new ChoirStaff \with {
      \override TimeSignature #'style = #'mensural
    }
    <<
      \new Staff = "cantus" <<
        \set Staff.instrumentName = #"Cantus"
        \new Voice = "cantus" {
          \relative c'' {
            #(set-accidental-style 'forget)
            \cadenzaOn
            \time 3/4
            \clef soprano
            \repeat volta 2 {g1. g2 g g e1. e2 e e g1. g2 g g fis1. f2 f1 g1. g2 g1 a1. a2 a1 g1 g1. fis2 g\breve g1} g\longa \bar "|."
            \cadenzaOff
          }
        }
      >>
      \new Staff = "altus" <<
        \set Staff.instrumentName = #"Altus"
        \new Voice = "altus" {
          \relative c' {
            #(set-accidental-style 'forget)
            \cadenzaOn
            \time 3/4
            \clef mezzosoprano
            \repeat volta 2 {d1. d2 d d c1. c2 c c d1. d2 d d d1. d2 d1 d1. d2 d1 f1. f2 f1 d1 e1 d1 d\breve d1} d\longa
            \cadenzaOff
          }
        }
      >>
      \new Staff = "tenor" <<
        \set Staff.instrumentName = #"Tenor"
        \new Voice = "tenor" {
          \relative c' {
            #(set-accidental-style 'forget)
            \cadenzaOn
            \time 3/4
            \clef alto
            \repeat volta 2 {g1. g2 g g g1. g2 g g g1. g2 g g a1. a2 a1 b1. b2 b1 c1. c2 c1 b1 c1 a1 g\breve g1} g\longa
            \cadenzaOff
          }
        }
      >>
      \new Staff = "bassus" <<
        \set Staff.instrumentName = #"Bassus"
        \new Voice = "bassus" {
          \relative c {
            #(set-accidental-style 'forget)
            \cadenzaOn
            \time 3/4
            \clef bass
            \repeat volta 2 {g1. g2 g g c1. c2 c c g1. g2 g g d'1. d2 d1 g1. g2 g1 f1. f2 f1 g1 c,1 d1 g,\breve g1} g\longa
            \cadenzaOff
          }
        }
      >>
    >>
  >>
}

\markup \abs-fontsize #12 \center-column {
  \vspace #2
  \fill-line { \center-column {"RECERCATA SECONDA" } }
  \vspace #1 
}

\score {
  <<
    \new Staff \with {
      %\remove "Time_signature_engraver"
      \override TimeSignature #'style = #'mensural
    }
    \relative c' {
      #(set-accidental-style 'forget)
      \cadenzaOn
      \autoBeamOff
      \time 3/4
      \clef varbaritone
      g1 b2. c4 d2 b c c, e2. f4 g2 e d g b2. c4 d2 b a d, fis2. g4 a2 fis g g b2. c4 d2 b c f, a2. b4 c2 a \bar ""
      \clef tenor b2 g'1 e2 fis d2. c4 b a g2 d'2. c4 b a b a g f g2 d'1 b2 c \clef varbaritone g2. f4 e d c2 c' b g b2. c4 d2 b a d, \bar ""
      fis2. g4 a2 f g g b2. c4 d2 b c a c4 b a g a b c a b a g f g2 c4 b a g a2 g d2. c4 b a g2 d' b \bar ""
      g2 b2. c4 d1 r2 g2 e c e2. f4 g2 d b g4 a b c d e fis g a2. g4 fis e f2 d'2. c4 b a b2 d2. c4 b2 a c2. b4 \bar ""
      a4 g a b c a b a g f e f g e f2 d2. d4 d2 b g r2 d''2. d4 d2 b g r g2. g4 g2 e c r c' b2. a4 b c d2 b \bar ""
      g2 fis2. e4 f g a2 fis d' b2. a4 b c d2 b b a2. g4 a b c2 a c b g2. f4 g e f2 d b g4 a b c d2 g, d'' \bar ""
      b2 g4 a b c d c b a g f e d e f g a g2. f4 e2 d  \clef tenor g1 b d a fis d' \bar ""
      b1 d2. c4 b2 a c1 a c2 b4 a g f e d e2 d a' d2. c4 b a b2 \clef varbaritone g2 g, d'2. c4 b a \bar ""
      b2 g g'2. f4 e d e2 c r c' b g4 a b c d c b a b g a fis f g a g fis e  \bar ""
      d4 b c d g, d'' b c d c b a g a b g a c a b c b a g a b c a \bar ""
      b4 a g g e f g e f e d c d c b a g\breve
      \bar"|."
      \cadenzaOff
    }
  >>
  \layout { indent = #0 }
}