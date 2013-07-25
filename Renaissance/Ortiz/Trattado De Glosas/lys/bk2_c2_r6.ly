\version "2.12.3"

\tocItem \markup\italic {"            Recercata sesta sopra il detto canto piano"}
\markup \abs-fontsize #12 \center-column {
  \vspace #2
  \fill-line { "RECERCATA SESTA" }
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
	\time 4/8
	\clef bass
	\key d \minor
	d\breve a g bes a g bes c d f e d f g c, d c g' f g c, bes ees d g, a c d f e d c bes a g a g\longa \bar"||"
}
>>
<<
\new Staff \with {
	\override TimeSignature #'style = #'mensural
}
\relative c' {
        #(set-accidental-style 'forget)
        \autoBeamOff
        \cadenzaOn
	\clef tenor
	\key d \minor
	a4 f4. e8 f g a4. bes8 c4 a \bar "|" bes2 d4 bes4. a8 bes c d e f g a4 g4. fis8 f4 \bar "|" g2 d4 bes4. a8 bes c d e f d e f g f \bar ""
	e8 d c bes a g f e d e f g \bar "|" a bes c4 a8 bes c d \bar "|" e f g f e d e d16 e \bar "|" f4 d4. c8 bes a16 g \bar "|" a8 g f e \bar ""
	d8 c bes a \bar "|" g4 d''4. c8 bes a \bar "|" g4 c4. bes8 c16 bes a g \bar "|" f4 f' d8 e f d \bar "|" e d c bes c d e c \bar "|" d4 bes4. c8 d bes \bar "|"
	c8 bes a g a bes c a \bar "|" bes4 g'4. f8 d4 \bar "|" e c4. bes8 g a \bar "|" bes c d4. c8 bes a \bar "|" g a bes c bes c16 bes c bes a g \bar "|"
	f8 e f g a g a f \bar "|" g4 d' bes d2 c8 bes a bes c4 \bar "|" g g'e g2 f8 e d e f4 \bar "|" c c a c2 bes8 a g4. a8 \bar "|"
	bes4 a8 g f g a bes \bar "|" c d e f g4 e \bar "|" d d,4. e8 f g \bar "|" a4. bes8 c d e f \bar "|" g4 g,8 a bes c d e \bar "|"
	fis4 g4. f8 g16 f e f g\breve
	\bar"|."
        \cadenzaOff
}
>>
