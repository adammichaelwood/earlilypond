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
    \clef #(if (eqv? (ly:get-option 'urtext) #t)
               "varbaritone"
               "bass")
    \key d \minor
    g4. a8 bes4 g \bar "|"
    bes4. a8 g4 f8 [e] \bar "|"
    d4 d4. e8 f [d] \bar "|"
    f4. e8 d [c bes a] \bar "|"
    g4 g'2 fis4 \bar "|"
    g4 bes4. a8 g [f16 e] \bar "|" \urtextBreak
    \cadenzaOn
    d4 c2 bis4 c ees4. d8 c [bes16 a] \bar "|"
    \cadenzaOff
    g4 g'2 f8 [e] \bar "|"
    f8 g a f g f e d \bar "|"
    c4 bes8 a bes c d bes \bar "|" \noBreak
    \cadenzaOn
    c8 bes a g f4 \bar "|" \urtextBreak
    c''2 bes8 a bes c d bes \bar "|"
    \cadenzaOff
    c8 bes a g f e d c \bar "|"
    bes4 bes'8 c d c bes a \bar "|"
    g8 f e d c bes a g \bar "|"
    \cadenzaOn
    f4 f'8 e d c bes a g4 g'4. f8 e d \bar "|"
    \cadenzaOff
    c4 f4. e8 d c \bar "|"
    \cadenzaOn
    bes4 \modernSwitch alto d'4. c8 bes a g4 g'4. f8 e d c bes a g f e d c \bar "|"
    \modernSwitch bass bes8 a g a bes c d bes c bes a g f4 c'' \bar "|"
    \cadenzaOff
    a4 c4. bes8 a g \bar "|"
    \cadenzaOn
    f4 g e g4. f8 e d c4 f d f4. e8 d c bes4 d'4 \bar "|"
    bes4 d4. c8 bes a g a bes g a g f e d c bes a g4 g'4. fis8 g16 f e f \bar "|"
    g4 f8 e d c bes a g4 d''4. cis8 d16 c bes c \bar "|"
    d4 c8 bes a g f e d4 g2 fis4 \bar "|"
    \cadenzaOff
    g4 d f g \bar "|"
    \cadenzaOn
    e2 d4 d'2 cis4 d a \bar "|"
    \cadenzaOff
    c4 d bes2 \bar "|"
    a8 bes c bes a g f4 \bar "|"
    bes4. a8 g f e d \bar "|"
    c8 d ees c d bes c d \bar "|"
    g,4 bes4. a8 bes c \bar "|"
    \cadenzaOn
    d4 g, g' bes4. a8 bes c d4 g, \bar "|"
    \cadenzaOff
    d4 f4. e8 f g \bar "|"
    \cadenzaOn
    a4 d, g, bes4. a8 bes c d4 g, \bar "|"
    \cadenzaOff
    c4 ees4. d8 e f \bar "|"
    g4 c,4. bis8 bes4 \bar "|"
    c4 g'4. f8 fis4 \bar "|"
    \cadenzaOn
    g4 f8 e d c bes a g\breve\fermata \bar"|."
    \cadenzaOff
    \pageBreak
  }
>>
