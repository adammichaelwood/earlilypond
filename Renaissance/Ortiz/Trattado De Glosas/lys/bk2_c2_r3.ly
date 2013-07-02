\version "2.12.3"

\tocItem "Recercata terza sopra il detto canto"
\markup \abs-fontsize #12 \center-column {
  \vspace #2
  \fill-line { "RECERCATA TERZA" }
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
\relative c {
        #(set-accidental-style 'forget)
        \autoBeamOff
        \cadenzaOn
	\clef tenor
	\key d \minor
	d4 f4. g8 a4. g8 f e f d f g \bar "|" a4 a c4. d8 e d c d e c e fis \bar "|" g4 g, bes4. c8 d c bes a bes g bes c \bar ""
	d4 d, f4. e8 d c d e f d f g a4. bes8 c bes a g a4 g4. fis16 e f4 g d' bes d4. c8 bes a bes4 g r d' bes d4. c8 bes a \bar ""
	bes8 a g f e d e f g a g4. f8 g16 f e d e8 f g e f4 f' d f4. e8 d c16 bes a4 f2 c'4 a c4. bes8 a g a bes c bes16 a \bar ""
	g4 g' e g4. f8 e d e f g f16 e f4 a, f a4. g8 f e d e f g a4 d,8 e f g a bes c4 a4. bes8 c a bes c d4. c8 \bar ""
	bes8 a g4 g'4. f8 g16 f e d e4 g4. f8 g16 f e d e4 c4. bes8 c16 bes a g f4 a4. g8 a16 g f e f4 d8 e f g a bes c d \bar ""
	e8 f g4 g e c e2 d r4 d4 bes g bes2 a r4 c4 a f a4. g16 a bes4 g8 a bes c d4. c8 bes a bes c d bes c4. bes16 a g4 g' \bar ""
	e4 c4. d8 e c d4. e8 f e d c bes4 d4. c8 bes a g4 bes g bes4. a8 g f g a bes c d4 f d f8 e d c d e f g a f \bar ""
	g4 g, bes4. a8 g f g a bes c d bes \bar "|" c4 a c a \bar "|" c4. bes8 a g a4 \bar "|" g g'4. f8 e d c4 c4. bes8 a g \bar "|" f4 a4. g8 f e \bar ""
	d4 f4. e8 d c bes! c d e f g a bes \bar "|" c4 a4. bes8 c d \bar "|" e4. d8 e f g4. f8 e d e f g e \bar "|" f4 f,4. e8 f g \bar "|"
	a4 f4. g8 a bes c4 c4. bes8 c d \bar "|" eis4 c4. d8 e c \bar "|" d4 d,4. c8 d e \bar "|" f4 d4. e8 f g \bar "|" a4 c4. bes8 c d \bar "|" e4 c4. d8 e f \bar "|"
	g4 g,4. f8 g a \bar "|" bes4 g8 a bes c d bes \bar "|" c4. bes8 a g fis e \bar "|" f4 g4. f16 e f4 g\longa
	\bar"|."
        \cadenzaOff
}
>>
