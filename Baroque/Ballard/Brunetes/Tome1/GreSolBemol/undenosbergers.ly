%%  undenosbergers.ly
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

AAagVoice = \relative c'' {
  \clef soprano
  \key d \minor
  \autoBeamOff
  \bla
  r4 bes c d
  g, fis g a
  bes4. bes8 c4 d
  g, fis g a
  bes4. bes8 c4 d
  ees c bis4. c8
  c4 d d4. c8
  bes8 [a] bes [c] \vpmordant c2
  bes d4 c8 bes
  \repeat volta 2 {
    a4 fis g a
    bes4. bes8 c4 d
    a bes \vpmordant a2
  }
  \alternative {
    {g2 d'4 c8 bes}
    {g1}
  }
  \bar "|." \break
}

AAagLyrics = \lyricmode {
  Un de nos Ber- gers l'au- tre jour,
  Un de nos Ber- gers l'au- tre jour,
  Di- soit aux E- chos d'a- len- tour,
  Sen- tant sa pei- ne~ex trê- me:
  Ah! si c'est un mal que l'a- mour,
  Il est bien sûr que j'ai- me.
  Ah! si c'est...
  me.
}

AAagFigures = \figuremode {
  s1
  s
  s
  s
  s
  s2 <_+>
  s1
  s
  s
  <6>4 <_+> s2
  s1
  s
  s
  s
}

AAagBass = \relative c {
  \clef bass
  \key d \minor
  \autoBeamOff
  \bla
  g4 g' f d
  ees d8 [c] bes4 a
  g4. g8 a4 bes
  c d ees c
  g'4. g8 a4 bes
  ees, f g g,
  c bes8 [a] g4. a8
  bes8 [c] d ees f2
  bes4 a8 [g] fis4. g8
  \repeat volta 2 {
    c,4 d ees f
    g4. g,8 a4 bes
    c2 d4 d,
  }
  \alternative {
    {g g' fis4. g8}
    {g,1}
  }
}

AAagScore = \score {
  \new StaffGroup  <<
    \new Voice = "Voice" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \AAagVoice
    >>
    \new Lyrics \lyricsto Voice	 {
      \AAagLyrics
    }
    \new Staff \with { \consists "Volta_engraver" } <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \figuremode {
        \AAagFigures
      }
      \AAagBass
    >>
  >>
  \header {
    piece = "Un de nos Bergers"
  }
}

AAagLyricsSup = \markup {
  \column {
    \fill-line {
      \hspace #0.1
      \column {
        \italic "Second Couplet"
        \concat {"J'abandonne aux Loups mon troupeau : " \italic "bis."}
        "Et ne vais plus dans le hameau"
        "Le Dimanche & la Fête;"
        \vspace #0.3
        "Danse qui voudra sous l'Ormeau,"
        "J'ay d'autres soins en tête."
      }
      \hspace #0.1 
      \column {
        \italic "Troisième Couplet"
        \concat {"Je ne m'informe plus de rien : " \italic "bis."}
        "J'égaray l'autre jour mon Chien,"
        "J'ay perdu ma Houlette :"
        \vspace #0.3
        "Mais je m'en consolerois bien,"
        "Si je trouvois Lisette."
      }
      \hspace #0.1 
    }
    \vspace #1
    \fill-line {
      \hspace #0.1
      \column {
        \italic "Autre Couplet"
        \concat {"Un de nos Bergers amoureux, " \italic "bis."}
        "M'a rendu sensible à ses voeux,"
        "Malgré mon humeur fiere :"
        \vspace #0.3
        "Ah! qu'un Amant est dangereux,"
        "Quand il a dequoy plaire !"
      }
      \hspace #0.1 
      \column {
        \italic "Autre Couplet"
        \concat {"Quand on est tout seul amoureux, " \italic "bis."}
        "L'Amour est un Dieu dangereux,"
        "On languit dans ses chaînes:"
        \vspace #0.3
        "Mais dés le moment qu'on est deux,"
        "On les souffre sans peine."
      }
      \hspace #0.1 
    }
  }
}
