\version "2.12.3"

\tocItem \markup\italic{"            Recercata prima sopra o felici occhi miei"}
\markup \abs-fontsize #12 \center-column {
  \vspace #2
  \fill-line { "RECERCATA PRIMA SOPRA O FELICI OCCHI MIEI" }
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
      \time 2/2
      \clef varbaritone
      \key d \minor
      r\longa r\breve g1 d'4. e8 f4 e d c bes a \bar "|" bes4. a8 g f g a \bar "|" bes4 c8 bes c bes a g \bar "|" a4 bes a2 \bar "|" g4. f8 g e f g \bar "|" d1 \bar ""
      d2 d ees4. d8 c d e f g a bes a g f e d c1 c4. d8 ees d e c \bar "|" d4 bis c d g,2 c1 c4 d8 e f e f g \bar ""
      f4 e d c8 bes c2 \bar "|" bes bes'4. c8 \bar "|" d c bes c d e f d \bar "|" ees2. bes4 d c8 bes c a bes c \bar "|" bes2 bes, bes bes4 a8 g f2 f'4 e8 d \bar ""
      c4 d e f \bar "|" g a bes c \clef alto d e f g a2 g f4 e d c \clef varbaritone bes a g f \bar "|" ees8 d e f g f e d \bar "|"
      c8 bes c d e c d e \bar "|" d c bis c d bes c d \bar "|" g,1 r2 g'2 f4 e8 f g f e d \bar "|" c d ees c d c bes a g2 g' \bar "|"
      a2 bes4 c8 bes \bar "|" c bes a g a bes c a \bar "|" bes a g a bes c d bes \bar "|" c2 d d c d d,4 e8 f g a bes a g f e d \bar "|"
      c4. d8 ees4 c \bar "|" d8 e f g f e d c \bar "|" bes4. c8 d c bes a \bar "|" bes4. a8 bes c d bes \bar "|" c1 c d4. c8 bes c d e \bar ""
      f8 e d e f g a f \bar "|" g2 ees2 f4. e8 f d e f \bar "|" bes,2 r4 bes'4 a a g g f d ees c \bar "|" d4. c8 bes4 a8 bes \bar "|"
      c4. bes8 c a bes c \bar "|" d e f e d c bes a \bar "|" g2 bes' a g f4 d ees c \bar "|" d8 c bes a bes c d bes \bar "|" c2. bes8 c \bar "|"
      d8 e f e d c d4 \bar "|" g, g'4. a8 bes a \bar "|" g f e d \bar "|" c1 bis2 c1 g\breve
      \bar"|."
      \cadenzaOff
    }
  >>
  \layout { indent = #0 }
}