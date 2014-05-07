%%  jesuischarmedunebrune.ly
%%  This file is part of the Earlilypond project
%%  
%%  Copyright (c) 2014 Benjamin Coudrin <benjamin.coudrin@gmail.com>
%%                All Rights Reserved
%%
%%  This program is free software. It comes without any warranty, to
%%  the extent permitted by applicable law. You can redistribute it
%%  and/or modify it under the terms of the Do What The Fuck You Want
%%  To Public License, Version 2, as published by Sam Hocevar. See
%%  http://sam.zoy.org/wtfpl/COPYING for more details.

AAacVerseUnNotes = {
  \repeat volta 2 {
    g8 fis4
    g4 a8
    bes g4
    \vpmordant a4 a8
    g8 fis4
    g4 a8
    bes g4
    \vpmordant a4.
  }
  a4  a8
  d4 c8
  bes \vpmordant a4
  \vpmordant g g8
  g4 g8
  c4 a8
  bes8 g4
  fis4.
  bes8. a16 g8
  a4 d,8
  \vpmordant e4 fis8
  g4 g8
  bes8. a16 g8
  a4 d,8
  e4 fis8
  g4.
  \bar "||" \break
}

AAacVerseDeuxNotes = {
  \repeat volta 2 {
    g4^\markup{\italic "Second Couplet"} \times 2/3 {a16 [g fis]}
    g4 a8
    bes8. (\times 1/2 {c16 [bes])} \times 2/3 {a16 [g a]}
    \vpmordant a4 a8
    g8. (\times 1/4 {f16 [e) f g]} a16 [fis]
    g4 a8
    \times 2/3 {bes16 [\vsmartel c d c bes a] bes [g a]}
    \vpmordant a4.
  }
  a8 a4
  bes16 [c d] ees [c d]
  c8 [\vcoul bes] \times 2/3 {c16 [bes a]}
  \vpmordant g4 g8
  g g4
  \times 2/3 {bes16 [a bes]} c16 [d a bes]
  c [bes] a8 [g]
  fis4.
  bes8 c16 [bes] \times 2/3 {a16 [g a]}
  \vpmordant a8. g16*1/3 [f e] f16 [d]
  g16 ([f16.] g16*1/8 [e) f g] a16 [fis] f
  (g4) g8
  bes16 c [bes a] bes16*2/3 [g a]
  \vpmordant a8. (g16 f16*1/2) [e f d]
  f16*1/2 [e f g] a16 [(e)] fis8
  g4.
  \bar "|."
}

AAacVoice = \relative c'' {
  \clef soprano
  \key d \minor
  \time 3/8
  \autoBeamOff
  \AAacVerseUnNotes
  \AAacVerseDeuxNotes
}

AAacLyricsUn = \lyricmode {
  Je suis char- mé d'u- ne Bru- ne,
  Qui tient mon ame en lan- gueur:
  Quel- le se- roit ma for- tu- ne,
  Si j'a- vois tou- ché son coeur!
  Ah! que ma flame est im- por- tu- ne!
  Ja- mais A- mour n'est sans dou- leur.
}

AAacLyricsDeux = \lyricmode {
  Con- tre son hu- meur vo- la- ge,
  Quand mon coeur s'est re- vol- té:
  Sou- dain el- le me ren- ga- ge
  Par u- ne faus- se bon- té.
  Con- tre les traits _ d'un beau vi- sa- ge,
  Qui peut gar- der sa li- ber- té!
}

AAacFigures = \figuremode {
  \repeat volta 2 {
    s8 <_+>4
    <6> <6+>8
    s4.
    <_+>
    <6>8 <6+>4
    s4.
    s
    s
  }
  s4.
  s
  <6>8 <5>4
  s4.
  s
  s4 <_+>8
  s4.
  <_+>
  s
  s
  s4 <_+>8
  s4.
  s
  <_+>4 <6>8
  s4 <_+>8
  s4.
}

AAacBassNotes = \relative c' {
  \repeat volta 2 {
    g8 d' [c]
    bes4 a8
    g4.
    d4 (c8)
    bes a4
    g4 fis8
    g4.
    d
  }
  d'4 c8
  bes4 c8
  d4.
  ees4 d8
  c4 bes8
  a4 d8
  g,8. a16 bes [c]
  d4.
  g
  fis4 g8
  c,4 d8
  g,4.
  g'8. f16 ees8
  d8. c16 bes8
  c4 d8
  g,4.
}

AAacBass = \relative c {
  \clef bass
  \key d \minor
  \time 3/8
  \autoBeamOff
  \AAacBassNotes
  \AAacBassNotes
}

AAacScore = \score {
  \new StaffGroup  <<
    \new Voice = "Voice" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \AAacVoice
    >>
    \new Lyrics \lyricsto Voice	 {
      \AAacLyricsUn
      \AAacLyricsDeux
    }
    \new Staff \with { \consists "Volta_engraver" } <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \figuremode {
        \AAacFigures
        \AAacFigures
      }
      \AAacBass
    >>
  >>
  \header {
    piece = "Je suis charme d'une Brune"
  }
}

AAacLyricsSup = \markup {
  \column {
    \vspace #0
    \fill-line {
      \hspace #0.1
      \column {
        \italic "Troisième Couplet"
        "Elle a l'air d'une Déesse,"
        "Rien ne manque à ses appas,"
        "Qu'une certaine tendresse"
        "Que son coeur ne connoit pas:"
        "Les traits, dont la rigueur me blesse,"
        "Me font souffrir mille trépas."
      }
      \hspace #0.1 
      \column {
        \italic "Quatrième Couplet"
        "Dès que je la vis paroitre"
        "Qu'elle m'inspira d'ardeur!"
        "Dans l'instant je sentis naitre"
        "Une amoureuse langueur:"
        "Heureux! Si j'osois me promettre"
        "De pouvoir attendrir son coeur!"
      }
      \hspace #0.1
    }
  }
}
