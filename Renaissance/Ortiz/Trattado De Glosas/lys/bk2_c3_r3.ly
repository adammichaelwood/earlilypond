\version "2.12.3"

DCtitle = \markup \abs-fontsize #12 \center-column {
  \vspace #2
  \fill-line { \center-column {"RECERCATA TERZA" } }
  \vspace #1 
}


DCcantusNotes = \relative c'' {a2 a a bes1 bes2 a1 a2 g1 g2 a a a bes1 bes2 a g f f1 e2 f1}
DCcantusSettings = {
  \set Staff.instrumentName = #"Cantus"
  #(set-accidental-style 'forget)
  \cadenzaOn
  \time 4/4
  \key f \major
  \clef #(if (eqv? (ly:get-option 'urtext) #t)
               "soprano"
               "treble")
}
DCcantusUrtext = {
  \DCcantusSettings
  \repeat volta 2 {\DBcantusNotes} f\longa
  \cadenzaOff
}


DCaltusNotes = \relative c'' {d1. d2 d d c1. c2 c c d1. d2 d d d1. d2 d1 d1. d2 d1 f1. f2 f1 d1 e1 d1 d\breve d1}
DCaltusSettings = {
  \set Staff.instrumentName = #"Altus"
  #(set-accidental-style 'forget)
  \cadenzaOn
  \time 4/4
  \key f \major
  \clef #(if (eqv? (ly:get-option 'urtext) #t)
               "mezzosoprano"
               "treble")
}
DCaltusUrtext = {
  \DBcantusSettings
  \repeat volta 2  {\DBcantusNotes} d\longa
  \cadenzaOff
}


DBtenorNotes = \relative c' {g1. g2 g g g1. g2 g g g1. g2 g g a1. a2 a1 b1. b2 b1 c1. c2 c1 b1 c1 a1 g\breve g1}
DBtenorSettings = {
  \set Staff.instrumentName = #"Tenor"
  #(set-accidental-style 'forget)
  \cadenzaOn
  \time 4/4
  \key f \major
  \clef #(if (eqv? (ly:get-option 'urtext) #t)
               "alto"
               "alto")
}
DBtenorUrtext = {
  \DBtenorSettings
  \repeat volta 2 {\DBtenorNotes} g\longa
  \cadenzaOff
}


DBbassusNotes = \relative c {g1. g2 g g c1. c2 c c g1. g2 g g d'1. d2 d1 g1. g2 g1 f1. f2 f1 g1 c,1 d1 g,\breve g1}
DBbassusSettings = {
  \set Staff.instrumentName = #"Bassus"
  #(set-accidental-style 'forget)
  \cadenzaOn
  \time 4/4
  \key f \major
  \clef #(if (eqv? (ly:get-option 'urtext) #t)
               "bass"
               "bass")
}
DBbassusUrtext = {
  \DBbassusSettings
  \repeat volta 2 {\DBbassusNotes} g\longa
  \cadenzaOff
}

DBrecercada = \relative c' {
  #(set-accidental-style 'forget)
  \autoBeamOff
  \cadenzaOn
  \time 3/4
  \clef #(if (eqv? (ly:get-option 'urtext) #t)
               "varbaritone"
               "bass")
  g1 b2. c4 d2 b c c, e2. f4 g2 e d g b2. c4 d2 b a d, fis2. g4 a2 fis g g b2. c4 d2 b c f, a2. b4 c2 a \bar "" \urtextBreak
  \clef #(if (eqv? (ly:get-option 'urtext) #t)
               "tenor"
               "alto") b2 g'1 e2 fis d2. c4 b a g2 d'2. c4 b a b a g f g2 d'1 b2 c
  \clef #(if (eqv? (ly:get-option 'urtext) #t)
               "varbaritone"
               "bass") g2. f4 e d c2 c' \modernMeasBreak b g b2. c4 d2 b a d, \bar "" \urtextBreak
  fis2. g4 a2 f g g b2. c4 d2 b c a c4 b a g a b c a b a g f g2 c4 b a g a2 \modernMeasBreak g d2. c4 b a g2 d' b \bar "" \urtextBreak
  g2 b2. c4 d1 r2 g2 e c e2. f4 g2 d b g4 a b c d e fis g a2. g4 fis e f2 d'2. c4 b a b2 d2. c4 b2 a c2. b4 \bar "" \urtextBreak
  a4 g a b c a b a g f e f g e f2 d2. d4 d2 b g r2 d''2. d4 d2 b g r g2. g4 g2 e c r c' b2. a4 b c d2 b \bar "" \urtextBreak
  g2 fis2. e4 f g a2 fis d' b2. a4 b c d2 b b a2. g4 a b c2 a c b g2. f4 g e f2 d b g4 a b c d2 g, d'' \bar "" \urtextBreak
  b2 g4 a b c d c b a g f e d e f g a g2. f4 e2 d
  \clef #(if (eqv? (ly:get-option 'urtext) #t)
               "tenor"
               "alto") g1 b d a fis d' \bar "" \urtextBreak
  b1 d2. c4 b2 \modernMeasBreak a c1 a c2 b4 a g f e d e2 d a' d2. c4 b a b2 
  \clef #(if (eqv? (ly:get-option 'urtext) #t)
               "varbaritone"
               "bass") g2 g, d'2. c4 b a \bar "" \urtextBreak
  b2 g g'2. f4 e d e2 c r c' b g4 a b c d c b a b g a fis f g a g fis e  \bar "" \urtextBreak
  d4 b c d g, d'' b c d c b a g a b g a c a b c b a g a b c a \bar "" \urtextBreak
  b4 a g g e f g e f e d c d c b a g\breve
  \bar"|."
  \cadenzaOff
}


DBurtextVersion = {
  <<
    \new Staff \with {
      \override TimeSignature #'style = #'mensural
      \override NoteHead #'style = #'mensural
    }
    \DBcantusUrtext
    \new Staff \with {
      \override TimeSignature #'style = #'mensural
      \override NoteHead #'style = #'mensural
    }
    \DBaltusUrtext
    \new Staff \with {
      \override TimeSignature #'style = #'mensural
      \override NoteHead #'style = #'mensural
    }
    \DBtenorUrtext
    \new Staff \with {
      \override TimeSignature #'style = #'mensural
      \override NoteHead #'style = #'mensural
    }
    \DBbassusUrtext
  >>
  <<
    \new Staff \with {
      \override TimeSignature #'style = #'mensural
      \override NoteHead #'style = #'baroque
    }
    \DBrecercada
  >>
}
  
DBmodernVersion = \new StaffGroup <<
  \new Staff \with {
    \override TimeSignature #'style = #'mensural
    \override NoteHead #'style = #'baroque
  }
  \DBrecercada
  \new Staff \with {
    \override TimeSignature #'style = #'mensural
    \override NoteHead #'style = #'baroque
  }
  {
    \DBcantusSettings
    \DBcantusNotes
    \DBcantusNotes
    \DBcantusNotes
    \DBcantusNotes
    \DBcantusNotes
    \DBcantusNotes
    %\bar "|."
  }
  \new Staff \with {
    \override TimeSignature #'style = #'mensural
    \override NoteHead #'style = #'baroque
  }
  {
    \DBaltusSettings
    \DBaltusNotes
    \DBaltusNotes
    \DBaltusNotes
    \DBaltusNotes
    \DBaltusNotes
    \DBaltusNotes
  }
  \new Staff \with {
    \override TimeSignature #'style = #'mensural
    \override NoteHead #'style = #'baroque
  }
  {
    \DBtenorSettings
    \DBtenorNotes
    \DBtenorNotes
    \DBtenorNotes
    \DBtenorNotes
    \DBtenorNotes
    \DBtenorNotes
  }
  \new Staff \with {
    \override TimeSignature #'style = #'mensural
    \override NoteHead #'style = #'baroque
  }
  {
    \DBbassusSettings
    \DBbassusNotes
    \DBbassusNotes
    \DBbassusNotes
    \DBbassusNotes
    \DBbassusNotes
    \DBbassusNotes
  }
>>

DBmusic = #(if (eqv? (ly:get-option 'urtext) #t)
               #{ \DBurtextVersion #}
               #{ \DBmodernVersion #})

\score {
  <<
    \new ChoirStaff \with {
      \override TimeSignature #'style = #'mensural
    }
    <<
      \new Staff = "cantus" <<
        \set Staff.instrumentName = #"Cantus"
        \new Voice = "cantus" {
          \relative c'' {
            #(set-accidental-style 'forget)
            \cadenzaOn
            \key f \major
            \time 4/4
            \clef soprano
            \repeat volta 2 {a2 a a bes1 bes2 a1 a2 g1 g2 a a a bes1 bes2 a g f f1 e2 f1} f\longa \bar "|."
            \cadenzaOff
          }
        }
      >>
      \new Staff = "altus" <<
        \set Staff.instrumentName = #"Altus"
        \new Voice = "altus" {
          \relative c' {
            \cadenzaOn
            \key f \major
            \time 4/4
            \clef mezzosoprano
            \repeat volta 2 {f2 f f f1 f2 f1 f2 e1 e2 f f f f1 f2 f e d d c1 c} c\longa
            \cadenzaOff
          }
        }
      >>
      \new Staff = "tenor" <<
        \set Staff.instrumentName = #"Tenor"
        \new Voice = "tenor" {
          \relative c' {
            \cadenzaOn
            \key f \major
            \time 4/4
            \clef alto
            \repeat volta 2 {c2 c c d1 d2 c1 c2 c1 c2 c c c d1 d2 c c a bes g1 f} f\longa
            \cadenzaOff
          }
        }
      >>
      \new Staff = "bassus" <<
        \set Staff.instrumentName = #"Bassus"
        \new Voice = "bassus" {
          \relative c {
            \cadenzaOn
            \key f \major
            \time 4/4
            \clef bass
            \repeat volta 2 {f2 f f bes,1 bes2 f'1 f2 c1 c2 f f f bes,1 bes2 f' c d bes c1 f,} f\longa
            \cadenzaOff
          }
        }
      >>
    >>
  >>
}


\markup \abs-fontsize #12 \center-column {
  \vspace #2
  \fill-line { \center-column {"RECERCATA TERZA" } }
  \vspace #1 
}

\score {
  <<
    \new Staff \with {
      %\remove "Time_signature_engraver"
      \override TimeSignature #'style = #'mensural
    }
    \relative c {
      #(set-accidental-style 'forget)
      \cadenzaOn
      \autoBeamOff
      \time 4/4
      \key f \major
      \clef tenor
      f2. g4 a g8 a bes2. a4 f g a bes c2 a c2. d4 e d8 e f2 f,4 g a g8 a bes2. a4 f g a bes c2 a bes4 a \bar ""
      \clef varbaritone g4 f e d c2 c'2. bes4 a g f f2 e4 d c bes a8 g f4 c''2 c4 a c2 bes8 a g4 c2 c4 a c4. bes8 a g \clef alto f4 f'2 f4 \bar ""
      d4 f4. e8 d4 c c2 c4 a d4. c8 bes a g4 c2 c4 a c4. bes8 a g f4 g a bes c a bes c d e f f, f g a bes c d e f \bar ""
      g4 f e d c bes a g f e d c d e f g a bes c bes \clef varbaritone a8 g f e d e f d e f g a g f e d \bar ""
      c8 bes a bes c bes a g f2 c'' a bes f d' a c f, g e g f c' a bes f d' a c f, bes g c2. bes4 a g \bar ""
      \clef tenor f2 c'4 bes a g f e d e f g a bes c a c d e f g c,,8 d e f g e f4 g a bes c a bes c d e f g a f \bar ""
      g4 e f8 e d c d e f d e f g f e d f e f4 c2 bes4 a g f2 f'2. e4 d c bes2 c2. bes4 a2 \clef varbaritone g4 f e d \bar ""
      c8 bes a g f4 c''2 bes4 a g f e d c bes a8 g f4 c''4. bes8 a g f e d c d e f d e f g f e d f e f4 c \bar ""
      \clef bass c4 c f, c'' c c \clef tenor f, f' f f bes, d d d a c c c f,8 g a bes c d e f g f e d e d c bes a g \bar ""
      \clef varbaritone a8 bes c d c bes a g f e d c bes a bes c d e f d f g a g a bes c bes a g f e d c d e f d \bar ""
      \clef bass e8 f g a g f e d c bes a bes c a bes c f,\breve\fermata
      \bar"|."
      \cadenzaOff
      \autoBeamOn
    }
  >>
  \layout { indent = #0 }
}