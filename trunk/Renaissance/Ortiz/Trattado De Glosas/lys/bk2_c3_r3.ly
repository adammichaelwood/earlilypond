\version "2.12.3"

#(set-global-staff-size 15)
\paper { indent = #0 }
\layout {
	\context {
		\Score
		\override SpacingSpanner #'uniform-stretching = ##t
	}
}

\new ChoirStaff <<
	\new Staff = "cantus" <<
		\set Staff.instrumentName = #"Cantus"
		\new Voice = "cantus" {
			\relative c'' {
				\key f \major
				\time 6/2
				\clef soprano
				\repeat volta 2 {a2 a a bes1 bes2 a1 a2 g1 g2 a a a bes1 bes2 a g f f1 e2 f1}
			}
		}
	>>
	\new Staff = "altus" <<
		\set Staff.instrumentName = #"Altus"
		\new Voice = "altus" {
			\relative c' {
				\key f \major
				\time 6/2
				\clef mezzosoprano
				\repeat volta 2 {f2 f f f1 f2 f1 f2 e1 e2 f f f f1 f2 f e d d c1 c}
			}
		}
	>>
	\new Staff = "tenor" <<
		\set Staff.instrumentName = #"Tenor"
			\new Voice = "tenor" {
			\relative c' {
				\key f \major
				\time 6/2
				\clef alto
				\repeat volta 2 {c2 c c d1 d2 c1 c2 c1 c2 c c c d1 d2 c c a bes g1 f}
			}
		}
	>>
	\new Staff = "bassus" <<
		\set Staff.instrumentName = #"Bassus"
		\new Voice = "bassus" {
			\relative c {
				\key f \major
				\time 6/2
				\clef bass
				\repeat volta 2 {f2 f f bes,1 bes2 f'1 f2 c1 c2 f f f bes,1 bes2 f' c d bes c1 f,}
			}
		}
	>>
>>

<<
\new Staff \with {
	%\remove "Time_signature_engraver"
}
\relative c {
	\time 9/2
	\key f \major
	\clef tenor
	f2. g4 a g8 a bes2. a4 f g a bes c2 a c2. d4 e d8 e f2 f,4 g a g8 a bes2. a4 f g a bes c2 a bes4 a
	\clef varbaritone g4 f e d c2 c'2. bes4 a g f f2 e4 d c bes a8 g f4 c''2 c4 a c2 bes8 a g4 c2 c4 a c4. bes8 a g \clef alto f4 f'2 f4
	d4 f4. e8 d4 c c2 c4 a d4. c8 bes a g4 c2 c4 a c4. bes8 a g f4 g a bes c a bes c d e f f, f g a bes c d e f
	g4 f e d c bes a g f e d c d e f g a bes c bes \clef varbaritone a8 g f e d e f d e f g a g f e d
	c4 bes a bes c bes a g f2 c'' a bes f d' a c f, g e g f c' a bes f d' a c f, bes g c2. bes4 a g
	\clef tenor f2 c'4 bes a g f e d e f g a bes c a c d e f g c,,8 d e f g e f4 g a bes c a bes c d e f g a f
	g4 e f8 e d c d e f e d f g f e d f e f4 c2 bes4 a g f2 f'2. e4 d c bes2 c2. bes4 a2 \clef varbaritone g4 f e d
	c8 bes a g f4 c''2 bes4 a g f e d c bes a8 g f4 c''4. bes8 a g f e d c d e f d e f g f e d f e f4 c
	\clef bass c4 c f, c'' c c \clef tenor f, f' f f bes, d d d a c c c f,8 g a bes c d e f g f e d e d c bes a g
	\clef varbaritone a8 bes c d c bes a g f e d c bes a bes c d e f d f g a g a bes c bes a g f e d c d e f d
	\clef bass e8 f g a g f e d c bes a bes c a bes c f,\breve\fermata
	\bar"||"
}
>>