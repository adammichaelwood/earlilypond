\version "2.12.3"

\tocItem "Recercata seconda sopra il detto madrigal"
\markup \abs-fontsize #12 \center-column {
  \vspace #2
  \fill-line { "RECERCATA SECONDA SOPRA IL MEDESIMO MADRIGALE" }
  \vspace #1 
}

\score {
  <<
    \new Staff \with {
      %\remove "Time_signature_engraver"
      \override TimeSignature #'style = #'mensural
    }
    \relative c'' {
      #(set-accidental-style 'forget)
      \cadenzaOn
      \autoBeamOff
      \time 2/2
      \clef soprano
      \key d \minor
      r\breve r1 g1 d'2 d d4. c8 d c bes a \bar "|"
      bes2 g4 a \bar "|"
      bes4 c8 bes c bes a g \bar "|"
      a4 bes a2 \bar "|"
      g4 a bes c \bar "|"
      bes4 a g f8 g \bar "|"
      a8 g fis e g4 f \bar "|"
      g2 g d' d \bar "|"
      d8 e f e d c bes a \bar "|"
      bes2 g4 a \bar "|"
      bes c d bes \bar "|"
      c8 d ees d c bes a g \bar "|"
      a4 bes g a fis g4. f8 f4 g\breve r\breve r2 bes2. c4 d bes c2. bes4 \bar "|"
      bes4 a8 g a bes g a \bar "|"
      bes2 d2 d4. c8 d bes c d \bar "|"
      c4. d8 ees d c d \bar "|"
      e4. d8 e c d e \bar "|"
      d2 d d d c4. bes8 bes4 a8 g \bar "|"
      a4 bes8 c d2. c4 bes a \bar "|"
      g4. a8 bes g a bes \bar "|"
      a8 bes c bes c bes a g \bar "|"
      fis4 g4. f16 e f4 g1 r2 g2 a4 g8 a bes g a bes \bar "|"
      c4. bes8 a bes g a \bar "|"
      bes4 g8 a bes c d bes \bar "|"
      c2 d cis4 d4. c8 d16 c bes c \bar "|"
      d2 d c a \bar "|"
      bes4 c8 bes c bes a g \bar "|"
      a4 bes a2 \bar "|"
      g2 g g4. f8 g e f g \bar "|"
      f4. g8 a g f e \bar "|"
      d4. e8 f e f g \bar "|"
      f4. e8 d e f4 \bar "|"
      e4. f8 g f e d \bar "|"
      e8 d e f e d e4 \bar "|"
      d8 e f e d e f g \bar "|"
      a4 bes c d \bar "|"
      c bes bes a8 g \bar "|"
      a4 bes2 a4 \bar "|"
      bes2 r4 d4 c a bes bes a g8 f g a g4 \bar "|"
      f4. e8 d4 f \bar "|"
      e8 f g f e d e4 \bar "|"
      d1 d2 r4 d'4 c a bes8 a g bes a2 g \bar "|"
      f4 g8 f g f e d \bar "|"
      e4 d e2 \bar "|"
      d2 d'2. c4 bes a bes a g2. f8 e d e f d \bar "|"
      e4 f e2 d\breve\fermata
      \bar"|."
      \cadenzaOff
    }
  >>
  \layout { indent = #0 }
}
