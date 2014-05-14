%%  vouspartezbelleclimene.ly
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

AAahSopUn = \relative c'' {
  \clef soprano
  \key d \minor
  \bla
  \autoBeamOff
  \repeat volta 2 {
    \partial 2
    g4^\markup{\italic "Sujet"} fis
    g4. a8 bes4 (a8) bes
    a4 a bes8 a be
  }
  \repeat volta 2 {
  }
  \break
}

AAahSopDeux = \relative c'' {
  \clef soprano
  \key d \minor
  \bla
  \autoBeamOff
  \repeat volta 2 {
    \partial 2
    bes4 a
  }
  \repeat volta 2 {
  }
}

AAahBass = \relative c' {
  \clef bass
  \key d \minor
  \bla
  \autoBeamOff
  \repeat volta 2 {
    \partial 2
    g4 d
  }
  \repeat volta 2 {
  }
}

AAahLyrics = \lyricmode {
  Vous par-
}


AAahScore = \score {
  \new StaffGroup  <<
    \new Voice = "SopUn" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \AAahSopUn
    >>
    \new Lyrics \lyricsto SopUn	 {
      \AAahLyrics
    }
    \new Voice = "SopDeux" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \AAahSopDeux
    >>
    \new Lyrics \lyricsto SopDeux	 {
      \AAahLyrics
    }
    \new Voice = "Basse" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \AAahBass
    >>
    \new Lyrics \lyricsto Basse	 {
      \AAahLyrics
    }
  >>
  \header {
    piece = "Vous partez, belle Climene"
    part = "TRIO"
  }
}

AAahLyricsSup = \markup {
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
    \vspace #1
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
