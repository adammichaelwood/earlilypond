\version "2.12.3"

\tocItem "Recercata quarta sopra il detto"
\markup \abs-fontsize #12 \center-column {
  \vspace #2
  \fill-line { "RECERCATA QUARTA" }
  \vspace #1 
}

<<
\new Staff \with {
	%\remove "Time_signature_engraver"
        \override TimeSignature #'style = #'mensural
}
\relative c {
        \cadenzaOn
        #(set-accidental-style 'forget)
	\time 4/4
	\clef bass
	\key d \minor
	d\breve a g bes a g bes c d f e d f g c, d c g' f g c, bes ees d g, a c d f e d c bes a g a g\longa \bar"|."
        \cadenzaOff
}
>>
<<
\new Staff \with {
%	\remove "Time_signature_engraver"
        \override TimeSignature #'style = #'mensural
}
\relative c' {
        #(set-accidental-style 'forget)
        \autoBeamOff
        \cadenzaOn
	\clef tenor
	\key d \minor
	a4 f4. g8 a4 \bar "|" d,4. e8 f g a4 \bar "|" eis' c4. d8 e4 \bar "|" a,4. bes8 c d e fis \bar "|" g4 d bes4. c8 \bar "|" d4 g,4. a8 bes c \bar "|" d4 f d4. e8 \bar "|"
	f4 bes,4. c8 d e f4 e8 d e d c bes a g fis e f g e f g4 g bes4. c8 d4 g,4 bes4. c8 d4 bes d4. e8 f4 bes,8 c d e f d \bar ""
	e4 c e4. f8 g4 c,8 d e f g e f4 d4. c8 bes4 \bar "|" a f4. g8 a bes \bar "|" a4 f'4. e8 d4 \bar "|" c a4. bes8 c bes16 a \bar "|" g4 g'4. f8 e d \bar ""
	e4 g4. f8 g e f4 f4. e8 d c \bar "|" d4 f4. e8 d c16 bes \bar "|" a4 c4. bes8 a g \bar "|" a4 c4. bes8 c a bes4 d4. c8 bes a bes4. a8 bes c d bes \bar ""
	c4 g'4. f8 g4 \bar "|" e c e2 \bar "|" d4 a'4. g8 a4 \bar "|" f d f2 \bar "|" e4 g4. f8 g4 \bar "|" e c e2 \bar "|" d4 d4. c8 d4 \bar "|" bes g bes2 \bar "|" a4. bes8 c d \bar ""
	c4. bes8 a g a bes c a \bar "|" bes c d4. c8 bes a \bar "|" g4 g'4. f8 d4 \bar "|" f4 g4. f8 e d \bar "|" e4 c4. bes8 g a \bar "|" bes4 d4. c8 bes a \bar "|"
	bes4 bes4. a8 f4 \bar "|" g bes4. a8 g f g4 bes4. a8 g4 \bar "|" f f'4. e8 d c \bar "|" d4 d4. c8 a4 \bar "|" bes4 d4. c8 bes a bes4 d4. c8 bes4 a c4. bes8 a g \bar ""
	a4 a'4. g8 f e16 d e4 g4. f8 e d \bar "|" e4 g4. f8 e4 \bar "|" d f4. e8 d c \bar "|" d4 d4. c8 bes a16 g \bar "|" a4 c4. bes8 a g \bar "|" a4 c4. bes8 a4 \bar "|"
	g4 g'4. f8 e d e4. d8 e f g e \bar "|" f4 a,4. g8 f e f4. e8 f g a f g4 g'4. f8 e d \bar "|" e4. d8 e f g e f4 d4. c8 bes a \bar ""
	bes4. a8 bes c d bes \bar "|" c4 c4. bes8 a g \bar "|" a4. g8 a bes c a \bar "|" bes4 d4. c8 bes a \bar "|" bes4. a8 bes c d bes \bar "|" c4 c4. bes8 a g \bar "|"
	a4. g8 a bes c a bis\longa
	\bar"|."
        \cadenzaOff
}
>>
