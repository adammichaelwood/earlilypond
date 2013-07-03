\version "2.12.3"

\tocItem "Recercata seconda sopra la detta Canzone"
\markup \abs-fontsize #12 \center-column {
  \vspace #2
  \fill-line { "RECERCATA SECONDA SOPRA LA MIDESMA CANCIONE" }
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
      \autoBeamOff
      \cadenzaOn
      \time 2/2
      \clef soprano
      f\breve f2 e4 d8 c d4 c d2 cis1 r2 d2 f4. e8 d e f g \bar "|" a2 f e4 f8 g a f g a gis4 a2 g4 a1 f f4. e8 f g a f \bar "|"
      g4. f8 g f e d e d c d e f g e \bar "|" f4 e f2 e1 r a a2 a a1 a4 gis8 f g a f g \bar "|" a4. b8 c4 b8 a \bar "|"
      b4 a8 g a b c a \bar "|" b a g f gis a4 g8 \bar "|" a\breve f2. g4 a g f e f e e d8 c d4 e d2 cis1 r2 d f4. e8 f e f g \bar "|"
      a4 g f e8 d \bar "|" e4 f8 g a g a f \bar "|" \bar "|" gis4 a4. g16 f g4 a4. g8 a g f e f1 f4. e8 f g a f \bar "|" g a bes a \bar "|"
      g8 f e d \bar "|" e4. f8 g f g e \bar "|" f4 e f2 e1 r a a2 a a4. b8 c b a g a f g a g4 f8 g \bar "|" a4. b8 c4 b8 c \bar "|"
      b4 a8 b a2. gis8 f g a4 g8 \bar "|" a4 b c b a g f e f4. e8 f g a f \bar "|" g4 g,8 a b c d e f4 g a g f e f2 \bar "|"
      e2 c d d cis1 e e4 c4. d8 e f g4 e f2 g g g4 a b c b a a b gis a4. g8 g4 a1 a2. b4 c b a g a4. g8 \bar ""
      f4 e f g a f \bar "|" g4. f8 e f g e \bar "|" f4 e f2 e1 r2 e f8 e d e f g a b \bar "|" c a b c d2. cis8 b c d4 c8 d1 r2 d, \bar ""
      e4. d8 c d e f \bar "|" g4 g,8 a b c d e \bar "|" f g a b c a b c \bar "|" b a g fis g a4 g8 \bar "|" a4 b c d c b a g \bar "|"
      f8 g a g f e d c \bar "|" b c d e f g a b \bar "|" cis4 d4. c16 b c4 \bar "|" d1 r2 e, f8 g a g f g a b cis4 \bar ""
      b8 c d2. cis8 b c d b c d1 r2 d, e4. f8 g f g a \bar "|" g4. f8 g e f g \bar "|" f e d e f g a f \bar "|" gis4 a4. g8 g4 \bar "|"
      a2 c2. b4 a g \bar "|" f8 e d e f e d c \bar "|" b a b c d b c d \bar "|" cis4 d4. c16 b d8 c d\breve\fermata
      \bar "|."
      \cadenzaOff
    }
  >>
  \layout { indent = #0 }
}