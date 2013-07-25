\version "2.12.3"

\tocItem \markup\italic{"            Recercata quarta sopra li detti tenori"}

\score {
  <<
    \new ChoirStaff \with {
      \override TimeSignature #'style = #'mensural
    }
    <<
      \new Staff = "cantus" <<
        \set Staff.instrumentName = #"Cantus"
        \new Voice = "cantus" {
          \relative c' {
            #(set-accidental-style 'forget)
            \cadenzaOn
            \time 4/4
            \key f \major
            \clef soprano
            \repeat volta 2 {r2 fis2 f f f1 f2 g1 g2 a1 a2 bes1 bes2 a1 a2 g1 g2 fis1
                             r2 f2 g a bes1 a g fis r2 f g a bes a2. g4 g2. fis4 f2 g1}
          }
        }
      >>
      \new Staff = "altus" <<
        \set Staff.instrumentName = #"Altus"
        \new Voice = "altus" {
          \relative c' {
            #(set-accidental-style 'forget)
            \cadenzaOn
            \time 4/4
            \key f \major
            \clef mezzosoprano
            \repeat volta 2 {r2 d d d d1 d2 d1 d2 f1 f2 f1 f2 f1 f2 d1 d2 d1
                             r2 d d f f1 f d d r2 d d f f f d eis d1 d}
          }
        }
      >>
      \new Staff = "tenor" <<
        \set Staff.instrumentName = #"Tenor"
        \new Voice = "tenor" {
          \relative c' {
            #(set-accidental-style 'forget)
            \cadenzaOn
            \time 4/4
            \key f \major
            \clef alto
            \repeat volta 2 {r2 a a a a1 a2 bes1 bes2 c1 c2 d1 d2 c1 c2 bes1 bes2 a1
                             r2 a bes c d1 c bes a r2 a bes c d c bes c a1 g}
          }
        }
      >>
      \new Staff = "bassus" <<
        \set Staff.instrumentName = #"Bassus"
        \new Voice = "bassus" {
          \relative c {
            #(set-accidental-style 'forget)
            \cadenzaOn
            \time 4/4
            \key f \major
            \clef bass
            \repeat volta 2 {r2 d d d d1 d2 g1 g2 f1 f2 bes,1 bes2 f'1 f2 g1 g2 d1
                             r2 d g f bes,1 f' g d r2 d g f bes, f' g c, d1 g,}
          }
        }
      >>
    >>
  >>
}



\markup \abs-fontsize #12 \center-column {
  \vspace #2
  \fill-line { \center-column {"RECERCATA QUARTA" } }
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
      \clef varbaritone
      d2 a'2. g4 fis e fis4. g8 a4 a d4. c8 bes4 a bes4. c8 d2 a4 c4. bes8 a g a4. g8 f4 e d c bes a8 g f4 c''4. bes8 a g \bar ""
      \clef alto
      a8 bes c a bes4 g4. a8 bes c d4 e fis2 r4 a,4. g8 fis e fis g a fis g a bes g a bes c a bes4 c d e f g a a, \bar ""
      bes2. c4 d e fis2. g4 a f g g, a8 bes c a bes a f g a bes c a bes4 d e8 f g e f4 d2 a4 bis c d bis d2. c8 bes \bar ""
      a4 g fis e d8 [e fis! g] \clef varbaritone a [g fis e] d c bes a g4 d''2 bes g4 a f4. g8 a bes c4 a \clef alto bes f'2 d bes4 \bar ""
      c4 f,4. g8 a bes c4 a bes d4. c8 bes a g4 bes a2 r4 a4. g8 fis e fis4 a g d' f4. e8 d c d4. c8 bes4 a c f4. e8 d c \bar ""
      \clef varbaritone
      d4. c8 bes4 a2 r4 d,4 f4. e8 d c bes a g4 \clef alto d'' f4. e8 d c d4 c2 bes8 a g f e d e4 d a' d4. c8 bis a bis2 g4 \bar ""
      \clef tenor
      a8 g f e fis2 a2. d,4 fis!4. g8 a2 d2. g,4 bes4. c8 d2 r4 c c c a2 r4 d d d bes2 r4 c c c a2 r4 bes bes bes \bar ""
      \clef varbaritone
      g2 r4 a a a f d d d g, g' a8 bes c a bes c d c bes a f g a g f g a bes c a bes g bes c d g, a bes \bar ""
      a g fis e d d' c bes a g f e d c bes a g g' g g a bes c a bes a f g a bes c a bes c d bes c bes \bar ""
      a g f e d c d c bes a g\breve
      \bar"|."
      \cadenzaOff
    }
  >>
  \layout { indent = #0 }
}


