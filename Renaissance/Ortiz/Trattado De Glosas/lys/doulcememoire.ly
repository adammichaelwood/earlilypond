\version "2.12.3"

#(set-global-staff-size 15)
\paper { indent = #0 }
\layout {
	\context {
		\Score
		\override SpacingSpanner #'uniform-stretching = ##t
	}
	\context {
		\Staff
		\override BarLine #'transparent = ##t
		\remove "System_start_delimiter_engraver"
                \override TimeSignature #'style = #'mensural
	}
}
\new StaffGroup = choirStaff <<
\new Staff = "cantus" <<
\set Staff.instrumentName = #"Cantus"
\new Voice = "cantus" {
\relative c' {
        #(set-accidental-style 'forget)
	\time 2/2
	\clef soprano
	f\breve f2 e d1 cis r2 d2 f2. g4 a2 f e a1 gis2 a1 f f2 f g g e1 f1 e1 r1 a1 a2 a a1. gis2 a c b a1 gis2 a\breve
	f\breve f2 e d1 cis r2 d2 f2. g4 a2 f e a1 gis2 a1 f f2 f g g e1 f1 e1 r1 a1 a2 a a1. gis2 a c b a1 gis2
	a\breve f1 g2 g f1. f2 e c d d cis1 e\breve e2 f g g g b2. a4 a1 gis2
	a1 a a2 a a1 f2 a g e f f e1 r2 e2 f4 g a b cis2 d1 cis2 d1 r2 d,2 e2. f4 g2 g
	f4 e a1 gis2 a c2. b4 a g f e d c b a d1 cis2 d1 r2 e2 f4 g a b cis2 d1 cis2 d1 r2 d,2
	e2. f4 g2 g f4 e a1 gis2 a c2. b4 a g f e d c b a d1 cis2 d\longa
	r\breve r\longa
	\bar"|."
}
}
>>

\new Staff = "tenor" <<
\set Staff.instrumentName = #"Tenor"
\new Voice = "tenor" {
\relative c' {
	#(set-accidental-style 'forget)
	\time 2/2
	\clef tenor
	a\breve a2 g f1 e d d'1. d2 c b4 a b1 a a a2 a bes4 a g f g1 f g c c2 c c1 d c2 b a1 g2 a b1 a\breve
	a\breve a2 g f1 e d d'1. d2 c b4 a b1 a a a2 a bes4 a g f g1 f g c c2 c c1 d c2 b a1 g2 a
	b1 a\breve a1 bes2 bes a1 f g2 a d,d e1 c'\breve c2 a g b b b c d b1
	a1 a cis2 d1 cis2 d c b g g f g1 c\breve f1 e d2 a a a c1. e2 d2. c4 b1 a2 a
	c2. b4 a g a2 g2. f4 e1 d c'\breve f1 e d2 a a a c1. e2 d2. c4 b1 a2 a c2. b4 a g a2
	g2. f4 e1 d r2 fis2 g g f f  g1. fis4 e f\longa
	\bar"|."
}
}
>>

\new Staff = "altus" <<
\set Staff.instrumentName = #"Altus"
\new Voice = "altus" {
\relative c' {
	#(set-accidental-style 'forget)
	\time 2/2
	\clef alto
	d\breve c2 c a1 a\breve r1 a1 c2. d4 e2 e c1 d2 d1 d2 d e2. d4 c1 b2 c1 e f2 f f\breve e1 e2 e e1 e c\breve
	d\breve c2 c a1 a\breve r1 a1 c2. d4 e2 e c1 d2 d1 d2 d e2. d4 c1 b2 c1 e f2 f f\breve e1 e2 e e1 e c\breve
	d1 d2 d d2. c8 b a2 b b a a g a\breve g1 g2 d' b e d e f f e1
	c1 f e2 f e e f2. e4 d2 c c b c1 g a a'1. a2 f f f f g2. f4 e d c b a2 f'
	e1 c2. b4 a g f e f1 d2 bes' a1 a\breve a1 a'1. a2 f f f f g2. f4 e d c b a2 f' e1
	c2. b4 a g f e f1 d2 bes'2 a1 a r2 a2 b b a a b\breve a\longa
	\bar"|."
}
}
>>

\new Staff = "bassus" <<
\set Staff.instrumentName = #"Bassus"
\new Voice = "bassus" {
\relative c {
	#(set-accidental-style 'forget)
	\time 2/2
	\clef bass
	d\breve f2 c d1 a r1 d1 f2. g4 a2 f e1 a, d d2 d g4 f e d c2 e d1 c\breve f1 f2 f d4 e f g a2 e c a e'1 e a,\breve
	d\breve f2 c d1 a r1 d1 f2. g4 a2 f e1 a, d d2 d g4 f e d c2 e d1 c\breve f1 f2 f d4 e f g a2 e c a e'1 e a,\breve
	d1 g,2 g d'1. d2 c a b b a\breve c1 c2 d e e g g f d e1
	a,1 d a'2 d, a'1 d,2 f g c, d d c1 c f1. e4 d a'1 d,\breve r2 c2 c c d d e1 a,1 r2 f2 f f
	g2 g a1 d r1 f1. e4 d a'1 d,\breve r2 c2 c c d d e1 a, r2 f2 f f g g a1 d r2 d2
	g,2 g d' d g,\breve d'\longa
	\bar"|."
}
}
>>

>>

