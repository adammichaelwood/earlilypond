\version "2.12.3"

DAtitle = \markup \abs-fontsize #12 \center-column {
  \vspace #2
  \fill-line { \center-column {"RECERCATA PRIMA" } }
  \vspace #1 
}

DAcantusNotes = \relative c'' {g1 g a a g g fis f g g a a g2 g1 fis2 g1 g1}
DAcantusSettings = {
  \set Staff.instrumentName = #"Cantus"
  #(set-accidental-style 'forget)
  \cadenzaOn
  \time 4/4
  \clef #(if (eqv? (ly:get-option 'urtext) #t)
               "soprano"
               "treble")
  \key d \minor
}
DAcantusUrtext = {
  \DAcantusSettings
  \repeat volta 2 {\DAcantusNotes}
  \cadenzaOff
}

DAaltusNotes = \relative c' {d1 d f f d d d d d d f f d2 e d1 d d1}
DAaltusSettings = {
  \set Staff.instrumentName = #"Altus"
  #(set-accidental-style 'forget)
  \cadenzaOn
  \time 4/4
  \clef alto
  \key d \minor
}
DAaltusUrtext = {
  \DAaltusSettings
  \repeat volta 2 {\DAaltusNotes}
  \cadenzaOff
}

DAtenorNotes = \relative c' {bes1 bes c c bes bes a a bes bes c c bes2 c a1 g g1}
DAtenorSettings = {
  \set Staff.instrumentName = #"Tenor"
  #(set-accidental-style 'forget)
  \cadenzaOn
  \time 4/4
  \clef alto
  \key d \minor
}
DAtenorUrtext =  {
 \DAtenorSettings 
  \repeat volta 2 {\DAtenorNotes}
  \cadenzaOff
}

DAbassusNotes = \relative c' {g1 g f f g g d d g g f f g2 c, d1 g, g1}
DAbassusSettings = {
  \set Staff.instrumentName = #"Bassus"
  #(set-accidental-style 'forget)
  \cadenzaOn
  \time 4/4
  \clef bass
  \key d \minor
}
DAbassusUrtext = {
  \DAbassusSettings
  \repeat volta 2 {\DAbassusNotes}
  \cadenzaOff
}

DArecercada = \relative c' {
  #(set-accidental-style 'forget)
  \autoBeamOff
  \cadenzaOn
  \time 4/4
  \clef alto
  \key d \minor
  r2 d2. c4 bes2 a f4 g a bes c a bes2 d2. c4 bes2 a d,4 e fis g a fis g2 d'2. c4 bes2 a f4 g a bes c a bes2 g r2 a \bar "" \urtextBreak
  \urtextSwitch tenor bes2 g bes2. c4 d2 bes d2. c8 bes a4 g a bes c2 a bes g bes2. c4 d2. c8 bes a2 d bes2. c4 d2 bes c4 bes a g a bes c a bes2 c4 bes \bar "" \urtextBreak
  \clef bass a4 g fis e \modernMeasBreak d c bis c d c bes a g2 d''1 bes2 c2. bes4 a g a2 g bes1 g2 a2. g4 fis e f2 g d'1 bes2 c2. bes4 a g a2 \bar "" \urtextBreak
  \clef #(if (eqv? (ly:get-option 'urtext) #t)
               "tenor"
               "alto") g1 r2 d1 g bes d2. c4 bes2 a c2. bes4 a2 g bes1 d a d bes2. c4 d bes c2 c2. bes4 c a bes2 c4 bes a g a2 g d'2. c4 bes a \bar "" \urtextBreak
  bes2 d2. c4 bes2 a c2. bes4 a g8 a bes2 d2. c4 bes2 a a2. g4 a fis4 g a bes c d2 bes c c2. bes4 c a bes2 g r2 d'1 g,2 bes2. c4 \bar "" \urtextBreak
  d2 bes2. c4 d bes c2 c1 a2 bes2. c4 d2 bes a d1 a2 bes2. c4 d2 bes c c1 a2 bes c a \clef bass d,1 g,4 a bes c d2 g, d''1 g,2 \bar "" \urtextBreak
  \once \override Staff.TimeSignature #'style = #'single-digit
  %\time 3/1
  \set Staff.timeSignatureFraction = 3/1
  \scaleDurations 12/9 {a4. bes8 c4 f,4. g8 a4 bes4. c8 d4 bes g bes a4. g8 a4 fis4. e8 f4}
  %\time 4/4 
  \set Staff.timeSignatureFraction = 4/4
  g2. a4 bes c d bes c bes a g a bes c a \bar "" \urtextBreak
  bes4 bes c bes a g fis e d c bis c d c bes a g\breve\fermata
  \bar"|."
  \cadenzaOff
}

DAurtextVersion = {
  <<
    \new Staff \with {
      \override TimeSignature #'style = #'mensural
      \override NoteHead #'style = #'mensural
    }
    \DAcantusUrtext
    \new Staff \with {
      \override TimeSignature #'style = #'mensural
      \override NoteHead #'style = #'mensural
    }
    \DAaltusUrtext
    \new Staff \with {
      \override TimeSignature #'style = #'mensural
      \override NoteHead #'style = #'mensural
    }
    \DAtenorUrtext
    \new Staff \with {
      \override TimeSignature #'style = #'mensural
      \override NoteHead #'style = #'mensural
    }
    \DAbassusUrtext
  >>
  <<
    \new Staff \with {
      \override TimeSignature #'style = #'mensural
      \override NoteHead #'style = #'baroque
    }
    \DArecercada
  >>
}
  
DAmodernVersion = \new StaffGroup <<
  \new Staff \with {
    \override TimeSignature #'style = #'mensural
    \override NoteHead #'style = #'baroque
  }
  \DArecercada
  \new Staff \with {
    \override TimeSignature #'style = #'mensural
    \override NoteHead #'style = #'baroque
  }
  {
    \DAcantusSettings
    \DAcantusNotes
    \DAcantusNotes
    \DAcantusNotes
    \DAcantusNotes
    \DAcantusNotes
    \DAcantusNotes
    \DAcantusNotes
    g'\breve
    %\bar "|."
  }
  \new Staff \with {
    \override TimeSignature #'style = #'mensural
    \override NoteHead #'style = #'baroque
  }
  {
    \DAaltusSettings
    \DAaltusNotes
    \DAaltusNotes
    \DAaltusNotes
    \DAaltusNotes
    \DAaltusNotes
    \DAaltusNotes
    \DAaltusNotes
    d'\breve
  }
  \new Staff \with {
    \override TimeSignature #'style = #'mensural
    \override NoteHead #'style = #'baroque
  }
  {
    \DAtenorSettings
    \DAtenorNotes
    \DAtenorNotes
    \DAtenorNotes
    \DAtenorNotes
    \DAtenorNotes
    \DAtenorNotes
    \DAtenorNotes
    g\breve
  }
  \new Staff \with {
    \override TimeSignature #'style = #'mensural
    \override NoteHead #'style = #'baroque
  }
  {
    \DAbassusSettings
    \DAbassusNotes
    \DAbassusNotes
    \DAbassusNotes
    \DAbassusNotes
    \DAbassusNotes
    \DAbassusNotes
    \DAbassusNotes
    g,\breve
  }
>>

DAmusic = #(if (eqv? (ly:get-option 'urtext) #t)
               #{ \DAurtextVersion #}
               #{ \DAmodernVersion #})