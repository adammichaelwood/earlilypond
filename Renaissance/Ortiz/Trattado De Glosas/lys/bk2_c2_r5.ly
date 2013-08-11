\version "2.12.3"

AEtitle = \markup \abs-fontsize #12 \center-column {
  \vspace #2
  \fill-line { "RECERCATA QUINTA" }
  \vspace #1 
}


AEcantusFirmus = \relative c {
  \cadenzaOn
  #(set-accidental-style 'forget)
  \time 4/8
  \clef bass
  \key d \minor
  \override Staff.BarLine #'transparent = ##t
  \scaleDurations 1/2 {
    d\breve a g bes a g bes c d f e d f g c, d c g' f g c, bes ees d g, a c d f e d c bes a g a
  }
  \scaleDurations 2/1 {g\fermata}
  \revert Staff.BarLine #'transparent
  \bar"|."
  \pageBreak
  \cadenzaOff
}

AErecercata = \relative c {
  #(set-accidental-style 'forget)
  \autoBeamOff
  \cadenzaOn
  \clef #(if (eqv? (ly:get-option 'urtext) #t)
               "tenor"
               "alto")
  \key d \minor
  \set Staff.timeSignatureFraction = 4/4
  d4. e8 f [g a bes] \bar "|" c4 c,4. d8 e [f] \bar "|" g [a bes c] d4 d,2 e4 f g \bar "|" a4. bes8 c [d e f] \bar "|" g4 g,4. a8 bes [c \urtextMeasBreak
  d8 e] f [e d c] d4 \bar "|" d8 [f g f] e [d c bes] \bar "|" a [g f e] d [e f g] \bar "|" a4. g8 a [bes c d] \urtextMeasBreak \urtextBreak
  e8 [f] g4. f8 g [e] \bar "|" f4 \modernSwitch bass f,4. g8 a4. g8 f [e] d [c bes a] \bar "|" g4 \modernSwitch alto bes'4. c8 d [bes] \bar "|" c [d ees d] c [bes a g] \urtextMeasBreak
  f4 f'4. g8 a [f] \bar "|" g4. f8 e [d] e4 \bar "|" d bes4. c8 d [bes] \bar "|" c4. bes8 a [g] a4 \bar "|" g8 [a bes c] d4 d \bar "|" e c4. d8 e [c] \bar "|"
  d4 f4. e8 d [c] \bar "|" bes [a] g4 r g \bar "|" a f4. g8 a [f] \bar "|" g4 bes4. a8 g [f] \bar "|" e [d] c4 e c4. d8 e [f] g4 e \bar "|"
  f2 a4 f4. g8 a [bes] c4 a \bar "|" g g'2 e4 \bar "|" f d4. e8 f [d] \bar "|" e4 g2 e4 \bar "|" f d4. e8 f [d] \bar "|" \urtextBreak
  e4 c2 a4 \bar "|" bes g4. a8 bes4 \bar "|" a g4. fis16 [e] f4 g\longa
  \bar"|."
  %\urtextPageBreak
  \cadenzaOff
}

AEurtextVersion = {
  <<
    \new Staff \with {
      \override TimeSignature #'style = #'mensural
      \override NoteHead #'style = #'mensural
    }
    \AEcantusFirmus
  >>
  <<
    \new Staff \with {
      \override TimeSignature #'style = #'mensural
      \override NoteHead #'style = #'baroque
    }
    \AErecercata
  >>
}
  
AEmodernVersion = \new ChoirStaff <<
  \new Staff \with {
    \override TimeSignature #'style = #'mensural
    \override NoteHead #'style = #'baroque
  }
  \AErecercata
  \new Staff \with {
    \override TimeSignature #'style = #'mensural
    \override NoteHead #'style = #'baroque
  }
  \AEcantusFirmus
>>

AEmusic = #(if (eqv? (ly:get-option 'urtext) #t)
               #{ \AEurtextVersion #}
               #{ \AEmodernVersion #})
