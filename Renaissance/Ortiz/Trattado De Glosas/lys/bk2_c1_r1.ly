\version "2.12.3"

\tocItem \markup \italic { "            Recercata Prima"}
\markup \abs-fontsize #12 \center-column {
  \vspace #2
  \fill-line { "RECERCATA PRIMA" }
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
	g4. a8 bes4 g \bar "|"
	bes4. a8 g4 f8 e \bar "|"
	d4 d4. e8 f d \bar "|"
	f4. e8 d c bes a \bar "|"
	g4 g'2 fis4 \bar "|"
	g4 bes4. a8 g f16 e \bar "|"
	d4 c2 bis4 c ees4. d8 c bes16 a \bar "|"
	g4 g'2 f8 e \bar "|"
	f8 g a f g f e d \bar "|"
	c4 bes8 a bes c d bes \bar "|"
        c8 bes a g f4 \bar "|"
	c''2 bes8 a bes c d bes \bar "|"
	c8 bes a g f e d c \bar "|"
	bes4 bes'8 c d c bes a \bar "|"
	g8 f e d c bes a g \bar "|"
	f4 f'8 e d c bes a g4 g'4. f8 e d \bar "|"
	c4 f4. e8 d c \bar "|"
	bes4 d'4. c8 bes a g4 g'4. f8 e d c bes a g f e d c \bar "|"
	bes8 a g a bes c d bes c bes a g f4 c'' \bar "|"
	a4 c4. bes8 a g \bar "|"
	f4 g e g4. f8 e d c4 f d f4. e8 d c bes4 d'4 \bar "|"
	bes4 d4. c8 bes a g a bes g a g f e d c bes a g4 g'4. fis8 g16 f e f \bar "|"
	g4 f8 e d c bes a g4 d''4. cis8 d16 c bes c \bar "|"
	d4 c8 bes a g f e d4 g2 fis4 \bar "|"
	g4 d f g \bar "|"
	e2 d4 d'2 cis4 d a \bar "|"
	c4 d bes2 \bar "|"
	a8 bes c bes a g f4 \bar "|"
	bes4. a8 g f e d \bar "|"
	c8 d ees c d bes c d \bar "|"
	g,4 bes4. a8 bes c \bar "|"
	d4 g, g' bes4. a8 bes c d4 g, \bar "|"
	d4 f4. e8 f g \bar "|"
	a4 d, g, bes4. a8 bes c d4 g, \bar "|"
	c4 ees4. d8 e f \bar "|"
	g4 c,4. bis8 bes4 \bar "|"
	c4 g'4. f8 fis4 \bar "|"
	g4 f8 e d c bes a g\breve\fermata \bar"|."
        \cadenzaOff
        \pageBreak
}
>>
