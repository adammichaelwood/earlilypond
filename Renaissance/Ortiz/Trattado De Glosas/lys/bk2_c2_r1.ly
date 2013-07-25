\version "2.12.3"

\tocItem \markup\italic {"            Recercata prima sopra canto piano"}
\markup \abs-fontsize #12 \center-column {
  \vspace #2
  \fill-line { "RECERCATA PRIMA" }
  \vspace #1 
}

<<
\new Staff \with {
	%\remove "Time_signature_engraver"
        \override TimeSignature #'style = #'mensural
}
\relative c {
	\time 4/4
	\clef bass
	\key d \minor
        \cadenzaOn
        #(set-accidental-style 'forget)
	d\breve a g bes a g bes c d f e d f g c, d c g' f g c, bes ees d g, a c d f e d c bes a g a g\longa
        \cadenzaOff
         \bar"|."
}
>>
<<
\new Staff \with {
%	\remove "Time_signature_engraver"
        \override TimeSignature #'style = #'mensural
}
\relative c' {
        #(set-accidental-style 'forget)
	\key d \minor
        \autoBeamOff
        \cadenzaOn
	\clef tenor a2 f2. g4 a bes c2. d4 e2 fis g d bes2. c4 d e f1 d2 e4 d c bes a bes c a bes2 d bes2. c4 d e f1 d2 e2. f4 g2 e \bar ""
	\clef alto f2 a, f2. g4 a bes c1 d2 e2. f4 g2 e f a, f2. g4 a bes c1 a2 bes2. c4 d2 bes2 c2. bes8 a g4 f g2 f a f4 g a bes c d \bar ""
	\clef tenor e4 f g2 e d d bes4 c d e f2. e8 d c4 bes c1 bes4 a bes c d bes c2 g'2. f4 e2 d f2. e4 d c bes a g2 r g'1 f4 e \bar ""
	d4 e f e d c bes a g f e d c2 c'2. bes4 a2 g g'2. f4 e2 d2. c4 bes2 a4 g a2 d,4 e f g a bes cis2 d2. c4 c2 \bar ""
	d2 a2. g4 a bes c2 g2. f4 g a bes2. c4 d e f d e d c bes a bes c a bes c bes a g f g1 fis4 e f g2 f4 g\longa
	\bar"|."
        \cadenzaOff
}
>>
