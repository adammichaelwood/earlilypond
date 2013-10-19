\version "2.12.3"

CDtitle = \markup \abs-fontsize #12 \center-column {
  \vspace #2
  \fill-line { "RECERCATA TERZA SOPRA LA MEDESIMA CANZONE" }
  \vspace #1 
}

CDrecercada = \relative c {
  \override Staff.TupletBracket #'bracket-visibility = ##f 
  #(set-accidental-style 'forget)
  \autoBeamOff
  \cadenzaOn
  \time 2/2
  \clef bass
  d2. e4 f d f2. e8 [d] c2 d4 d,4. e8 f [g] \bar "|" a [b c d] e [c d e] \bar "|" f [g] a4. g8 f [e] \bar "|" d4. e8 f [e f g] \bar "|"
  f4. e8 d [e f g] \bar "|" a4. g8 f4 e8 [d] \bar "|" e4 c d e a,8 [b c b] a [g f e] d1 d'8 [e f e] d [c b a] \bar "|" g4 g'4. f8 e [d] \urtextMeasBreak
  c4 d e d8 [c] \bar "|" d4 e d2 c4 d e d c b a g f2 f'4 g a g f e \bar "|" d8 [e f e] d [e f g] \bar "|" a4 g8 [f] e [d c b] \bar "|"
  c4. b8 a [b c d] \bar "|" e4. f8 g [f e d] \bar "|" e [f g f] e [d c b] \bar "|" a4 a4. b8 c [d] \bar "|" e4 a,4. b8 c [a] \bar "|" d4 d4. e8 f [g] \bar "|"
  a4 d,4. e8 f [d] \bar "|" f4 e8 [d] c2 \bar "|" d4 d,4. e8 f [g] \bar "|" a4. b8 c [d e c] \bar "|" d4 d4. e8 f [g] \bar "|" a4 d,4. e8 f [g] a4. g8 f [e f g] \urtextMeasBreak
  a8 [g f e] d [e f d] e [d c d] e [d c b] \bar "|" a [g f g] a [g f e] \bar "|" d4 a''4. g8 f [g] \bar "|" a [g f e] d [c b a] \bar "|"
  g4 g'4. f8 e [f] \bar "|" g [f e d] c [d e c] \bar "|" d4 e d2 \bar "|" c8 [d e f] g [f e d] \bar "|" c [d e d] c [b a g] \bar "|" f4 f'2 g4 \urtextMeasBreak
  a4 g f e d2. c8 [b] \bar "|" a [b c d] e4 d \bar "|" c b a g8 [f] \bar "|" e2 e'4. f8 \bar "|" g [f e d] e [c d e] \bar "|" a,4 b c b a g f e \urtextMeasBreak
  d4 d'4. c8 b [a] \bar "|" g4 g'2 f8 [e] d4 a'4. g8 f [e] d4 f2 e8 [d] \bar "|" c4 b a2 b4 c b2 \bar "|" a4 a'2 g8 [f] \bar "|" e4 a2 g8 [f] \bar "|" e4 g4. f8 e [d] \urtextMeasBreak
  e4 c d2 \bar "|" e4. d8 c [d e f] \bar "|" \bar "|" g [f g a] g4 f8 [g] f [e d c] d [e f d] \bar "|" e4 f e2 a2. g4 \bar "|" f e d c8 [b] a2 a'2. g4 \bar "|"
  a8 [g f e] \bar "|" d4. e8 \times 2/3 {f4 e f} \bar "|" g4. f8 e4 d8 [c] \bar "|" d4 c d2 \bar "|" c4. d8 e4. d8 \bar "|" c4 b a g f2 f'2. e4 d c8 [b] \bar "|" a4 a'4. g8 \urtextMeasBreak
  a16 [g f \bar "|" e] f4 a4. g8 a16 [g f e] \bar "|" d4 f4. e8 d4 \bar "|" c g'4. f8 e d \bar "|" e4 g4. f8 e4 \bar "|" d4. e8 f4 d \bar "|" e2. d4 c b a g \bar "|"
  f4. g8 a [g f e] \bar "|" f4. g8 a [g a f] g4. a8 bes [a b g] a4. g8 a [f g a] d,4 a''2 g4 \bar "|" f a4. g8 f [e] \bar "|" f4 a2 g4 \bar "|" f e \urtextMeasBreak
  d c8 [b] a4 g a a'2 g4 f a4. g8 f [e] \bar "|" d [c] d4 \bar "|" c2 r4 g'4. f8 e [d] e2 \bar "|" f4 d4. e8 f4 e2. d4 c b a g f e f2. g4 \urtextMeasBreak
  a4 f g4. a8 bes [g a b] \bar "|" a [b c b] a [g f e] \bar "|" d4 d' f4. e8 \bar "|" d [c bes c] d [c b a] \bar "|" g4 f g f8 [e] \bar "|" d4 d'4. c8 \urtextMeasBreak
  b8 [a] g4 f g1 g4 e d\breve
  \bar"|."
  \cadenzaOff
}

CDmusic = {
  <<
    \new Staff \with {
      \override TimeSignature #'style = #'mensural
      \override NoteHead #'style = #'baroque
    }
    \CDrecercada
  >>
}