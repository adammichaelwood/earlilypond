\version "2.12.3"

\tocItem "Recercata Terza"
\markup \abs-fontsize #12 \center-column {
  \vspace #2
  \fill-line { "RECERCATA TERZA" }
  \vspace #1 
}

<<
\new Staff \with {
	\remove "Time_signature_engraver"
}
\relative c' {
        #(set-accidental-style 'forget)
        \autoBeamOff
        \cadenzaOn
	\time 2/2
	\clef varbaritone
	\key d \minor
	g2. a4 bes c d2 g,,2. a4 bes c d2 d,2. e4 f g a2 a'2. bes4 c d e2 d2. e4 f g a2. g4 f e d2 g2. f4 e d c2 d2. c4 \bar ""
	bes4 a g2 a2. g4 f e d2 g2. f4 e d c2 d2. c4 bes a g2 a2. g4 f e d2 a'2 bes4 g2 f4 g8 a bes c d2 a' \bar ""
	bes4 g2 fis4 g8 a bes c d2 d, ees4 c2 bis4 c8 d e f g2 d' ees4 c2 bis4 c8 d e f g4 g,4. a8 bes g \bar "|"
	a4 g2 fis4 \bar "|"
        g g,4. a8 bes g \bar "|"
        a4 g2 fis g4 d'4. e8 f d \bar "|"
        e4 d2 cis4 \bar "|"
        d d'4. e8 f d e4 d2 cis4  \bar "|"
	d4 c8 bes a4 bes \bar "|"
        a f g f8 e \bar "|"
        d4 ees d bes \bar "|"
        c bes8 a g4 bes \bar "|"
        a f c'' bes8 a \bar "|"
        g4 bes a f \bar ""
	g4 a d, ees \bar "|"
        d bes c d \bar "|"
        g, g' f d \bar "|"
        e f bes, bes \bar "|"
        a f g a d, d'2 g, c f, f' bes, c4 d \bar ""
	e4 f d4. e8 f g \bar "|"
        a4 g4. e8 fis4 \bar "|"
        g f8 e d4 \bar "|"
        g,4. a8 bes c d4 c4. a8 bes4 c bes8 a \bar "|"
	g4 g'4. a8 bes c \bar "|"
        d4 c4. a8 bis4 \bar "|"
        c4 bes8 a g a bes g \bar "|"
        a g f e d c bes a \bar "|"
        g4 g'4. e8 fis4 \bar "|"
	g4 f8 e d4 c4. a8 bis4 c bes8 a g\breve
	\bar"|."
        \cadenzaOff
        \pageBreak
}
>>
