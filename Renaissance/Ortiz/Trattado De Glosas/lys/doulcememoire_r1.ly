\version "2.12.3"

CBtitle = \markup \abs-fontsize #12 \center-column {
  \vspace #2
  \fill-line { "RECERCATA PRIMA SOPRA DOULCE MEMOIRE" }
  \vspace #1 
}

CBrecercada = \relative c {
  #(set-accidental-style 'forget)
  \autoBeamOff
  \cadenzaOn
  \time 2/2
  \clef bass
  d1 d4. e8 f [e f g] \bar "|" f2 c d4 e d c8 [b] \bar "|" a4 g a2 d,1 d'2. e4 \bar "|" f4. e8 d [e f g] \bar "|" a4 g f e8 [d] \bar "|" e4 f e2 a,1 \bar "|"
  d4. e8 f [e f g] \bar "|" a [g f e] d [c b a] \bar "|" g2 g'2. f4 e d8 [c] d4 c d2 c2. d4 e f g e f g a2. g4 f e d2. c8 [b] \urtextMeasBreak
  a8 [b c d] e4 d \bar "|" c b a g8 [f] \bar "|" e2 e'4. f8 g [f e d] e2. d4 c b \bar "|" a8 [b c b] a [g f e] \bar "|" d1 d'4. e8 f [e d e] \bar "|"
  f4 e8 [d] c2 \bar "|" d4 d,4. e8 f [g] \bar "|" a [b c b] a [g] a4 \bar "|" d,2 r d' f4. e8 d [e f g] \bar "|" a4. g8 f4 e8 [f] \bar "|" e2 e, \bar "|"
  a4. g8 a [fis g a] \bar "|" d,1 d'4. c8 d [c b a] \bar "|" g2 c2. d4 e d8 [c] \bar "|" d4 e f d e f g f e d c2 f,1 f'4. g8 a [g f e] \bar "|"
  d4 c d2 a e'4. d8 c4. b8 a [b c d] \bar "|" e4. f8 g f e d e2 e, a4 b c b a g f e \bar "|" d d'4. c8 b a g4 f g f8 e \bar "|"
  d4 a''4. g8 f e \bar "|" d4 c d2 \bar "|" c4. b8 a b c a \bar "|" b4 c c2 a e'2. d4 c b \bar "|" c4. d8 e4. f8 \bar "|" g4 f8 e d e f d \bar "|"
  e4. d8 c d e f g4 a g f8 g \bar "|" f4. e8 d4 f \bar "|" e d e2 a,4 g a2 \bar "|" d,4 d'4. e8 f g \bar "|" a g f e d4 c8 b \bar "|"
  a4 a'4. g8 f e \bar "|" d4. e8 f d e f \bar "|" g4 g, c2 d4. e8 f d e f \bar "|" g4. f8 e4 d \bar "|" c4. b8 a b c4 \bar "|" f,2 f'2. e4 d c8 b \bar "|"
  a4 g a2 d,1 d' c4 d e f \bar "|" g4. f8 e4 d8 c \bar "|" d4. e8 f4 d e f e2 \bar "|" a,4. b8 c4 b \bar "|" a g f e \bar "|" f4. g8 a4 g8 f g4. a8 \urtextMeasBreak
  bes4 a8 g a4 g a2 d,1 a''2. g4 f e f2. e4 d c8 b a4 g a2 d,1 d' c2. d4 e f g e \bar "|" f4. e8 d e f d \bar "|" e4 f e d8 e \urtextMeasBreak
  a,4 b c b a g f e \bar "|" f4. g8 a4 f g4. a8 bes4 g \bar "|" a fis g a d,1 r2 d' g,2. f8 e d2 d' g,4. a8 bes4. a8 g4 fis g2 d\breve\fermata
  \bar"|."
  \cadenzaOff
}
 

CBmusic = {
  <<
    \new Staff \with {
      \override TimeSignature #'style = #'mensural
      \override NoteHead #'style = #'baroque
    }
    \CBrecercada
  >>
}
