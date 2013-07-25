\version "2.12.3"

\tocItem \markup\italic{"            Recercata ottava sopra li detti tenori"}

\score {
  <<
    \new Staff \with {
      \override TimeSignature #'style = #'single-digit
    }
    \relative c {
      #(set-accidental-style 'forget)
      \cadenzaOn
      \time 3/4
      \clef bass
      \key d \minor
      \repeat volta 2 {d2 d d d1. g f bes,2 bes bes f'1. g d1 d2} \noBreak
      \repeat volta 2 {d2 g f bes,1 f' g d1 d2} \noBreak
      \repeat volta 2 {d2 g f bes,1 f'2. g2 d1 g, g2} \noBreak
      g\longa
      \bar"|."
    }
  >>
}

\markup \abs-fontsize #12 \center-column {
  \vspace #2
  \fill-line { \center-column {"RECERCATA OTTAVA" } }
  \vspace #1 
}

\score  {
  <<
    \new Staff \with {
      \override TimeSignature #'style = #'single-digit
    }
    \relative c {
      #(set-accidental-style 'forget)
      \cadenzaOn
      \autoBeamOff
      \time 3/4
      \clef varbaritone
      \key d \minor
      d2 d d d1 d2 g4 a bes a g2 f4 g a g f8 e d c bes4 c d c bes a8 g f2 f'4 g a f g a bes a g f8 e \bar ""
      \clef tenor d1 d2 a'2 a a d2. c8 bes a2 bes2. c4 d bes c2 a a d2. c4 bes2 a2. bes4 c a bes2 g4 a bes g a2. g4 fis e \bar ""
      \clef varbaritone d8 c bes a g4 g' f2 bes, bes' a f g g, d' d' a d, g, f bes bes' c f, g g, \clef bass d'4 c8 bes a g f e d2 d'4 \bar ""
      e8 f g e f g f e d c bes c d c bes4 a8 g f2 g8 a bes c d c bis c d bis c d \clef varbaritone g,4 d''4. c8 \bar ""
      bes8 a g4 f8 e d c bes a g4 g' a f bes f d bes f' f, g g' a f d a' bes g d bes g g' a fis d a' d a \bar ""
      fis d fis4. g8 a4 fis4 g4. a8 bes a g f g a bes g a bes c d c bes a g f e d c \clef tenor bes4 f''8 e d c \bar ""
      bes8 a bes c d bes c4. bes8 a g f g a bes c a bes4. c8 d c bes a g a bes c d4 a fis d fis4. g8 a2 d, fis4. g8 \bar ""
      a4 d, fis4. g8 a4 d bes g bes4. c8 d2 r4 c4. c8 c4 a f r4 f4. f8 f4 d bes r4 c'4. c8 c4 a f r4 g8 a bes c d4 bes g r \bar ""
      d8 e fis g a4 fis d r d g2 f bes, bes' a f \clef bass g g, d' d, d' \clef varbaritone a' bes c d bes c f, g g, \bar ""
      d' a' fis d4 e8 fis g e fis g f e d c bes a g a bes c d e f d e f g4 f8 e d c bis c d bis \bar ""
      c8 d g,4 d'' bes g d' bes a d bes g c a bes f d bes f' f, g g d' bis c d g,\breve
      \bar"|."
      \cadenzaOff
    }
  >>
  \layout { indent = #0 }
}