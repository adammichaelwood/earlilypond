\version "2.12.3"

\tocItem \markup\italic {"            Recercata Quarta"}
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
\relative c' {
        \override Staff.TimeSignature #'stencil = ##f
        #(set-accidental-style 'forget)
        \autoBeamOff
        \cadenzaOn
	\time 2/2
	\clef #(if (eqv? (ly:get-option 'urtext) #t)
               "varbaritone"
               "bass")
	\key d \minor
	g2 f4 g  \bar "|"
        c,8 [d e f] g4 e \bar "|"
        d2 c4 d g,8 [a bes c] d4 bes \bar "|"
        a2 g4 a d,8 [e f g] a4 f e2 d4 a'' \bar "|"
        g a d,8 [e f g]  \bar "|" \urtextBreak
	a4 f e2 \bar "|"
        d4 d' c d \bar "|"
        g,8 [a bes c] d4 bes a2 g4 \modernSwitch alto g' fis g c,8 [d e f] g4 e f8 [e d c] \bar "|"
        d4 c8 [bes] a [g f e]  \bar "|" \urtextBreak
	\modernSwitch bass d8 [c bes a] g [a bes c] d [e f d] e [d c bes] a [g a bes] c [a bes c] \bar "|"
        d [c bes a] g [a bes g] a [g f g] a [f g a] \urtextMeasBreak \urtextBreak
	d,2 \modernSwitch alto d'4. e8 f [g a bes] c [d e f] g4 g,8 [a] bes [c d e] f4 f,8 [g a bes] c4 \bar "|"
        c,4. d8 e [f] g4 \bar "|"
        \modernSwitch bass g,4. a8 bes [c d bes] \bar "|" \urtextBreak
	c8 [bes a g] f [e] d4 \bar "|"
        \override Staff.TimeSignature #'stencil = ##t
        \once \override Staff.TimeSignature #'style = #'single-digit
        \time 3/4 d'4 e f g a bes \bar "|"
        c bes a g a bes \bar "|"
        c d e f e f d c bes a g a bes c d g, a bes \bar "|" \urtextBreak
	\time 4/4 a4 g8 [f] e [d c bes] \bar "|"
        a [bes c d] c [bes a g] \bar "|"
        f4 c''4. bes8 c16 [bes a g] a4 d4. c8 d16 [c bes a] \bar "|"
        bes4 g4. f8 g16 [f e d] \urtextMeasBreak \urtextBreak
	c4 d4. c8 d16 [c bes a] \bar "|"
        bes4 bes'4. a8 bes16 [a g f] \bar "|"
        g8 [f] g16 [f e d] e8. [f16] g [f e d] \bar "|"
        c8 [d e f] g [a bes c] \urtextMeasBreak \urtextBreak
	d8 [c bes a] g [a bes g] \bar "|"
        a [g fis e] f [g e f] \bar "|"
        g [f e d] c [bis] c4 g\breve\fermata
	\bar"|."
        \cadenzaOff
        \pageBreak
}
>>
