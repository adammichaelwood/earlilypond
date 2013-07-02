\version "2.12.3"

\tocItem "Recercata Seconda"
\markup \abs-fontsize #12 \center-column {
  \vspace #2
  \fill-line { "RECERCATA SECONDA" }
  \vspace #1 
}

<<
\new Staff \with {
	\remove "Time_signature_engraver"
}
\relative c' {
  #(set-accidental-style 'forget)
  \autoBeamOff
	\time 2/2
	\clef varbaritone
	\key d \minor
\cadenzaOn
  d2 c4 d \bar "|"
  a4. bes8 c4 bes8 a \bar "|"
  bes4 a g2 f4 g d4. e8 \bar "|"
  f4 e8 d e4 d \bar "|"
  c2 bes4 c \bar "|"
  g4. a8 bes4 a8 g \bar "|"
  a4 g8 a bes c d e \bar "|"
  f4 d8 e f g a bes \bar "|"
  c8 a bes c d bes c d \bar "|"
  cis4 d4. c16 bes d8 c \bar "|"
  d4 e8 f e d c bes \bar "|"
  a8 g f e d c bes a \bar "|"
  g4 f8 e d2 d'4. e8 f e d c \bar "|"
  bes8 a bes c d c bes a \bar "|"
  g2 g'4. a8 \bar "|"
  bes8 a g f e d e f \bar "|"
  g8 f e d c bes a g f2 c''4. d8 \bar "|"
  ees8 d c bes a g a bes \bar "|"
  c8 bes a g f e d c \bar "|"
  bes4 d4. c8 c bes16 c \bar "|"
  d4 bes a2 \bar "|"
  g4 g'4. f8 fis e16 f \bar "|"
  g4 e d2 \bar "|"
  c4 c'4. bis8 bes a16 bes \bar "|"
  c4 a g2 \bar "|"
  f4 f'4. e8 e d16 e \bar "|"
  f4 d c2 \bar "|"
  bes4 d4. cis8 c bes16 c \bar "|"
  d4 bes a2 \bar "|"
  g4 g'4. fis8 f e16 f \bar "|"
  g4 e d2 c4. bes8 a g f e \bar "|"
  d8 e f d e f g2 fis8 e f g4 f8 \bar "|"
  g4 bes a f \bar "|"
  g4. f16 e d8 e f g \bar "|"
  a8 bes c a bes4 d \bar "|"
  c4 a bes4. a16 g \bar "|"
  f8 g a bes c4 f \bar "|"
  e4 c d4. c16 bes \bar "|"
  a4 bes8 a bes a g f \bar "|"
  e8 d e f g f e d \bar "|"
  c4 ees d bes \bar "|"
  c4. bes16 a g8 a bes c \bar "|"
  d4 bes c d \bar "|"
  ees4. d8 c4 bis \bar "|"
  c4 d8 e d c bes a g\breve
	\bar"|."
\cadenzaOff
\pageBreak
}
>>
