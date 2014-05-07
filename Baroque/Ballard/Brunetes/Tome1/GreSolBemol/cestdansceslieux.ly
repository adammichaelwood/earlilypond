%%  cestdansceslieux.ly
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
AAaeVoice = \relative c'' {
  \clef soprano
  \key d \minor
  \bla
  \autoBeamOff
  \repeat volta 2 {
    d2 bes4 c
    d2 r4 d
    ees4. d8 c4 d
    \vpmordant bes2 g
    bes \vpmordant f4. f8
    g2 r4 a
    bes bes c d
    \vpmordant c2 d
  }
  \repeat volta 2 {
    bes2 a4 bes
    \vpmordant g2 r4 a
    bes4 bes c4. d8
    \vpmordant a2 g
  }
}

AAaeLyrics = \lyricmode {
  C'est dans ces lieux où re- gne l'in- no- cen- ce,
  Ja- mais A- mant n'y dit que ce qu'il pen- se:
  Mais à la Cour tout n'est rien qu'ap- pa- ren- ce.
}

AAaeBass = \relative c' {
  \clef bass
  \key d \minor
  \bla
  \autoBeamOff
  \repeat volta 2 {
    g2 g4 a
    bes2 r4 bes,
    c4. d8 ees4. f8
    g1
    g,2 d'
    ees4. d8 c2
    g' f
    ees d
  }
  \repeat volta 2 {
    g,2 d'
    ees4. d8 c2
    g'2 c,
    d g,
  }
}

AAaeScore = \score {
  \new StaffGroup  <<
    \new Voice = "Voice" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \AAaeVoice
    >>
    \new Lyrics \lyricsto Voice	 {
      \AAaeLyrics
    }
    \new Staff \with { \consists "Volta_engraver" } <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \AAaeBass
    >>
  >>
  \header {
    piece = "C'est dans ces lieux où regne l'innocence"
  }
}

AAaeLyricsSup = \markup {
  \column {
    \vspace #0
    \fill-line {
      \hspace #0.1
      \column {
        \italic "Second Couplet"
        "L'on peut icy sur la verte fougere,"
        "Passer le jour auprés de sa Bergere:"
        "Mais à la Cour il faut trop de mistere."
      }
      \hspace #0.1 
    }
    \vspace #1
    \fill-line {
      \hspace #0.1
      \column {
        \italic "Troisième Couplet"
        "Ce sont les fleurs qui font nôtre parure:"
        "Nous nous lavons avecque de l'eau pure:"
        "Nôtre Beauté doit tout à la Nature."
      }
      \hspace #0.1
      \column {
        \italic "Quatrième Couplet"
        "Dans vôtre Cour jamais l'amour ne dure,"
        "Tout vos discous sont remplis d'imposture:"
        "Les plus beaux teints sont couverts de peinture."
      }
      \hspace #0.1
    }
    \vspace #1
    \fill-line {
      \hspace #0.1 
      \column {
        \italic "Cinquième Couplet"
        "Tout les presents que l'ont fait à nos Belles,"
        "Ce sont des fruits, ce sont des fleurs nouvelles:"
        "Ou quelquefois un nid de Tourterelles."
      }
      \hspace #0.1 
      \column {
        \italic "Sixième Couplet"
        "Loin de vos yeux le destin me rappelle,"
        "Soyez toûjours aussi tendre que belle:"
        "Jusqu'à la mort je vous seray fidele."
      }
      \hspace #0.1
    }
    \vspace #1
    \fill-line {
      \hspace #0.1
      \column {
        \italic "Septième Couplet"
        "Pendant le temps d'une trop longue absence,"
        "De mon amour soyez en assûrance:"
        "Ne formez point de soupçon qui l'offense."
      }
      \hspace #0.1 
      \column {
        \italic "Huitième Couplet"
        "L'ingrate Iris a l'humeur trop volage:"
        "Cessez, mes yeux, de la voir davantage;"
        "Elle a du fard au coeur comme au visage"
      }
      \hspace #0.1 
    }
    \vspace #1
    \fill-line {
      \hspace #0.1
      \column {
        \italic "Neuvième Couplet"
        "Toy seule icy, plaintive Tourterelle,"
        "Dois prendre part à ma douleur mortelle,"
        "Tu pleure un mort, je pleurs un infidelle."
      }
      \hspace #0.1
      \column {
        \italic "Dixième Couplet"
        "De tous les maux, aimer n'est pas le pire,"
        "Mais quand on aime, & qu'on n'ose le dire,"
        "Non, il n'est pas de plus cruel martire."
      }
      \hspace #0.1
    }
    \vspace #1
    \fill-line {
      \hspace #0.1
      \column {
        \italic "Autre"
        "Si de mon coeur je ne suis plus maîtresse"
        "Dans mon malheur, j'ay du moins cette adresse,"
        "Qu'à mon Vainqueur je cache ma faiblesse."
      }
      \hspace #0.1 
      \column {
        \italic "Réponse"
        "Si de son coeur Iris n'est plus maîtresse,"
        "Que luy sert-il d'user d'aucune adresse,"
        "Dans peu ses yeux avoüront sa faiblesse."
      }
      \hspace #0.1
    }
  }
}
