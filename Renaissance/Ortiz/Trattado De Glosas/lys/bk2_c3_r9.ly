\version "2.12.3"

\tocItem \markup\italic{"            Una quinta parte sopra li detti tenori"}

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
            \key f \major
            \time 4/4
            \clef soprano
            \repeat volta 2 {a1 a2 a bes bes a1. a2 f f e f e1. e2 e e f f e1 f f2 f1 e2 f1} f\longa \bar "|."
          }
        }
      >>
      \new Staff = "altus" <<
        \set Staff.instrumentName = #"Altus"
        \new Voice = "altus" {
          \relative c' {
            #(set-accidental-style 'forget)
            \cadenzaOn
            \key f \major
            \time 4/4
            \clef alto
            \repeat volta 2 {f1 f2 f f f f1. f2 d c c bes b1. c2 c c a2. bes4 c1 c bes2 a c1 c} c\longa
          }
        }
      >>
      \new Staff = "tenor" <<
        \set Staff.instrumentName = #"Tenor"
        \new Voice = "tenor" {
          \relative c' {
            #(set-accidental-style 'forget)
            \cadenzaOn
            \key f \major
            \time 4/4
            \clef tenor
            \repeat volta 2 {c1 c2 c d d c1. c2 bes a g f g1. g2 g g f f g1 a f2 f g1 f} f\longa
          }
        }
      >>
      \new Staff = "bassus" <<
        \set Staff.instrumentName = #"Bassus"
        \new Voice = "bassus" {
          \relative c, {
            #(set-accidental-style 'forget)
            \cadenzaOn
            \key f \major
            \time 4/4
            \clef bass
            \repeat volta 2 {f1 f2 f bes bes f1. f2 bes f c' d c1. c2 c c d d c1 f, bes2 d c1 f,} f\longa
          }
        }
      >>
    >>
  >>
}

\markup \abs-fontsize #12 \center-column {
  \vspace #2
  \fill-line { \center-column {"QUINTA PARS." } }
  \vspace #1 
}

\score {
  <<
    \new Staff \with {
      %\remove "Time_signature_engraver"
      \override TimeSignature #'style = #'single-digit
    }
    \relative c {
      #(set-accidental-style 'forget)
      \cadenzaOn
      \autoBeamOff
      \time 4/4
      \clef bass
      \key f \major
      f2. g4 a g f e d2 f2. e8 d c1 f2. g4 a f g2 d e e2. f4 g f e d e2 d4 e f d e d c bes a2 c d4 e \bar ""
      f4 d e d c bes a g f2 c' a c bes4 c d bes c2 c a c \times 2/3 {d4. e8 f4} g2 d e g e g2. f4 e2 d4 e f d e2 c a c \bar ""
      \clef varbaritone \times 2/3 {d4. e8 f4} c2 c' a c2. bes4 a g a g f e d c d bes c2 c'1 a2 bes c1 f,2 r1 g e2. f4 g e a2 d, \times 2/3 {e4. f8 g4} f2 c d1 r g2 \bar ""
      a1. bes2 c a f f a2. bes4 c2 a \clef alto bes c r1 d2 e2. f4 g2 e c e d4 e f d e d c bes a g f e d e f d \bar ""
      \clef bass e d c bes c bes a g f2 c'' a f2. e4 f g a bes c bes a g f e f g a f g2 d r1 g2 e c g' e d4 e f d \bar ""
      e2 c' a f d4 e f d e2 c a f c'1 r f2 d bes c c' a f2. g4 a f g a bes2 g g1 e2 c e d r4 d e2 g f c \bar ""
      d4 e f d e2 r4 g a bes c bes a g f g a g f e d c bes bes' c bes a g a g f e f g a f g e d d \bar ""
      e4 f g f e d e f g f g e d e f d e d c bes a bes c a d e f d e d c bes c a bes c f,\breve \bar ""
      \bar"|."
      \cadenzaOff
    }
  >>
  \layout { indent = #0 }
}