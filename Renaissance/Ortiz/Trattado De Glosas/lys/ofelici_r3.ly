\version "2.12.3"

\tocItem \markup\italic{"            Recercata terza sopra il detto madrigal"}
\markup \abs-fontsize #12 \center-column {
  \vspace #2
  \fill-line { "RECERCATA TERZA SOPRA IL MEDESIMO MADRIGALE" }
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
	g4. f8 g f e d \bar "|" c4 d e d8 c \bar "|" d4 e d2 c g'4 a bes c d2 g,4. a8 bes c bes a \bar "|" g a bes a g a bes c \bar "|"
	d4. e8 f e d c d c bes c d c bes a \bar "|" bes a g f g a bes c \bar "|" bes a g f g a bes g \bar "|" a g a bes c d \bar ""
	e8 f g4 g,8 a bes g bes c \bar "|" d4 d,8 e f d f g \bar "|" a g f g a f g a \bar "|" g4. a8 bes g bes c \bar "|" d c bes c \bar ""
	d bes c d \bar "|" c4 c,8 d ees c e f \bar "|" g f e f g e f g \bar "|" f4. e8 d c bes a \bar "|" g4 g'4. f8 e d \bar "|" c4 c4. bes8 a g \bar ""
	f4 f'4. e8 d c d e f d e4 c \bar "|" d d'4. e8 f e \bar "|" d c bes c d e f d ees d c bes c4 bes8 c \bar "|" d4 c8 bes c d c4 \bar ""
	bes4 a8 g f e d c bes \bar "|" a g a bes c d e \bar "|" f e d e f g a bes \bar "|" c4 c,4. bes8 c bes16 a \bar "|" g4 d''4. c8 d16 c bes a \bar "|"
	bes4 bes4. a8 bes a16 g \bar "|" f4 g4. f8 g f16 e \bar "|" d4 d4. c8 d16 c bes a \bar "|" g4 d''4. c8 bes a \bar "|" bes a g a bes g a bes \bar "|"
	c d ees d c bes a g \bar "|" a g f e d c bes a \bar "|" g4 d''4. c8 bes a \bar "|" bes a g f g a bes g \bar "|" a f g a g f e d \bar ""
	c8 a bes c d bes c d \bar "|" g,4 g'4. a8 bes g a bes c a bes g a bes \bar "|" a4. g8 a bes c4 \bar "|" g4. f8 g a bes4 \bar "|" a g8 a bes a \bar ""
	g8 f g f e d e f e4 \bar "|" d d'4. c8 a4 bes8 a g a bes a g f \bar "|" e4 c'4. bes8 g4 a8 g f g a g f e \bar "|" d4 f4. e8 f4 \bar ""
	d4 bes8 c d bes c d \bar "|" c4 g'4. f8 g4 \bar "|" e c8 d e f g e \bar "|" f4 a4. g8 a4 \bar "|" f d8 e f g a f \bar "|" g a bes a g f g4 \bar ""
	f8 g a g f e d c \bar "|" d c bes a bes4 bes'4 \bar "|" a4. g16 a g4 g \bar "|" a f g e \bar ""
	f4. e8 d e f d \bar "|" e d c d e f e4 \bar "|" d8 e f e d c bes a \bar "|" g4 g'4. a8 bes4 \bar "|" a2 g4 g a4. f8 g4. e8 \bar "|"
	f4 d4. e8 f d \bar "|" e f g f e d e4 \bar "|" d8 e f e d c d4 \bar "|" g, g'4. fis8 g16 f e f \bar "|"
	g8 f e d c4 c2 bis8 a bes c d bes \bar "|" c d ees d c bes c4 g\breve
	\bar"|."
        \cadenzaOff
    }
  >>
  \layout { indent = #0 }
}