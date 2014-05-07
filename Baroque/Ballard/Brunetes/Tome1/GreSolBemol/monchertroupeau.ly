%%  monchertroupeau.ly
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

AAadSopUn = \relative c'' {
  \clef soprano
  \key d \minor
  \ter
  \autoBeamOff
  \repeat volta 2 {
    bes4^\markup{\italic "Sujet"} g d'
    bes2 c4 d2 g,4
    a2 a4
    bes4 g d'
    bes2 c4
    d2 g,8 [a]
    \vpmordant a2.
  }
  \repeat volta 2 {
    bes4 a bes
    g2 a4
    d,2 g4
    fis2 g4
    bes a c16 [bes a8]
    g16 [f g a] bes4 (\vpmordant a8. g16)
    fis2 g4
    g2.
  }
  \break
}

AAadSopDeux = \relative c'' {
  \clef soprano
  \key d \minor
  \ter
  \autoBeamOff
  \repeat volta 2 {
    d4 bes a
    g2 a4
    bes2 c4
    fis,2 f4
    d'4 bes a
    g2 a4
    bes2 c4
    fis,2.
  }
  \repeat volta 2 {
    d'4 c d
    bes2 c4
    d (c) bes8 [a16 bes]
    \vpmordant a2 g4
    d' c ees16 [d c8]
    bes16 [a bes c] d4 (\vpmordant c8. bes16)
    \vpmordant a2 g4
    g2.
  }
}

AAadBass = \relative c' {
  \clef bass
  \key d \minor
  \ter
  \autoBeamOff
  \repeat volta 2 {
    g4 g fis
    g2 f4
    f4 (ees8 [d]) ees4
    d2 d4
    g4 g fis
    g4 (f) ees
    d ees2
    d2.
  }
  \repeat volta 2 {
    bes4 f' d
    ees (d) c
    bes2 c4
    d2 ees4
    bes f' d
    ees2 c4
    d2 d4
    g,2.
  }
}

AAadLyrics = \lyricmode {
  Mon cher trou- peau, cher- chez la plai- ne,
  Fuy- ez les Bois de peur des Loups:
  Je ne son- ge qu'à Ce- li- me- ne,
  Je ne sçau- rois son- ger à vous.
}


AAadScore = \score {
  \new StaffGroup  <<
    \new Voice = "SopUn" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \AAadSopUn
    >>
    \new Lyrics \lyricsto SopUn	 {
      \AAadLyrics
    }
    \new Voice = "SopDeux" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \AAadSopDeux
    >>
    \new Lyrics \lyricsto SopDeux	 {
      \AAadLyrics
    }
    \new Voice = "Basse" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \AAadBass
    >>
    \new Lyrics \lyricsto Basse	 {
      \AAadLyrics
    }
  >>
  \header {
    piece = "Mon cher troupeau"
    part = "TRIO"
  }
}

AAadLyricsSup = \markup {
  \column {
    \vspace #2
    \fill-line {
      \hspace #0.1
      \column {
        \italic "Second Couplet"
        "Helas! dans mon malheur extrême,"
        "Je vois qu'il faut tout hazarder:"
        "Je n'ay pu me garder moy-même,"
        "Comment pourrois-je vous garder?"
      }
      \hspace #0.1 
      \column {
        \italic "Troisième Couplet"
        "Quand vous aurez quitté la plaine,"
        "Vous serez à l'abry des loups:"
        "Mais la cruelle Célimene"
        "Me fait par tout sentir les coups."
      }
      \hspace #0.1
    }
  }
}
