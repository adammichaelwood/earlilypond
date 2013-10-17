\version "2.12.3"

BEtitle = \markup \abs-fontsize #12 \center-column {
  \vspace #2
  \fill-line { "Recercata quarta che e quinta voce sopra il medesimo Madrigale" }
  \vspace #1 
}

BErecercada = \relative c' {
  \override Staff.TupletBracket #'bracket-visibility = ##f 
  #(set-accidental-style 'forget)
  \cadenzaOn
  \autoBeamOff
  \time 2/2
  \clef #(if (eqv? #t (ly:get-option 'urtext))
             "varbaritone"
             "bass")
  \key d \minor
  g1 c,2 e d1 c2 g'4 a bes c d2 g,2. a4 bes c bes a g2 g, d'1 g,\breve r1 g\breve d'4. e8 f4 d g1 c,4 bes8 [a] g2 r2 c2. d4 e d8 [e] \bar "" %\urtextMeasBreak
  f8 [e d c] d [bes c d] \bar "|" g,4 g'4. f8 e [d] \bar "|" e [d c bes] c [bes a g] f1 r2 c' d2. e4 \bar "|" f g8 [f] g [f e d] \bar "|"
  c2 r4 bes bes2 c d4 bes4. c8 d [e] \bar "|" f [e d c] bes [a] bes4 \bar "|" f2 f c'1 g2. a4 bes c d e \bar "|" f a bes g \bar "|" a4. g8 f4 a \bar "|"
  bes4 g4. f8 g16 [f e f] g4 g4. f8 g16 [f ees d] \bar "|" e8 [d c d] e [f g e] \bar "|" f4. e8 d [c] d4 \bar "|" g,\breve r2 g'1 f2 \times 2/3 {bes4. c8 d4} \bar "|"
  c2 bes \times 2/3 {a4. bes8 c4} \bar "|" g4. f8 g [e f g] \bar "|" c,2 f g e d4 e f d e f g1 e2 f d2. c4 d e f2 d e2. d4 e f g e \bar "|"
  f4 g a1 f2 bes g a4. g8 a [g f e] \bar "|" f4. e8 d4 bes' \bar "|" a a g g a f g e f2 d e e r a bes2. bes4 a a g g \bar "|"
  a4 f g e f2 d e4. d8 e [f g e] \bar "|" f [e d c] d [bis c d] \bar "|" g,1. c4 d ees f g f e d c4. bes8 g\breve
  \bar"|."
  \cadenzaOff
}

BEmusic = {
  <<
    \new Staff \with {
      \override TimeSignature #'style = #'mensural
      \override NoteHead #'style = #'baroque
    }
    \BErecercada
  >>
}
