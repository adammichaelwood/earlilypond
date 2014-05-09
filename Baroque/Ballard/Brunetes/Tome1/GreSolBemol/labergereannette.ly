%%  labergereannette.ly
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

AAafVoice = \relative c'' {
  \clef soprano
  \key d \minor
  \autoBeamOff
  \repeat volta 2 {
    \blater
    g4 d'2
    d c4
    d2 d4
    d g, d'
    \vpmordant c2 d4
    d2.
  }
  bes4 bes bes
  bes16 [a8 bes16] \vpmordant bis2
  c2 c4
  c c d
  \vpmordant bes4. (a8) bes4
  a2.
  \repeat volta 2 {
    g4 d'2
    
  }
}

AAafLyrics = \lyricmode {
  La Ber- gere An- net- te,
  Sur les bords d'un ruis- seau,
  Fi- loit sa que- noüil- let- te,
  En gar- dant son Trou- peau:
}

AAafFigures = \figuremode {
  s2.
  s
  s
  s
  s
  s
  s
  s
  s
  <5/>
  s
  s
}

AAafBass = \relative c' {
  \clef bass
  \key d \minor
  \autoBeamOff
  \repeat volta 2 {
    \displayMusic {
    \blater
    g2 fis4
    g4 f ees
    d2.
    }
    g2 f4
    ees2.
    d
  }
  g2 g4
  d g2
  c,4. bes8 a [g]
  fis2.
  g
  d'4. e8 fis4
  \repeat volta 2 {
  }
}

AAafScore = \score {
  \new StaffGroup  <<
    \new Voice = "Voice" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \AAafVoice
    >>
    \new Lyrics \lyricsto Voice	 {
      \AAafLyrics
    }
    \new Staff \with { \consists "Volta_engraver" } <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \figuremode {
        \AAafFigures
      }
      \AAafBass
    >>
  >>
  \header {
    piece = "La Bergere Annette"
  }
}

AAafLyricsSup = \markup \fontsize #-1 {
  \column {
    \vspace #0
    \fill-line {
      \hspace #0.1
      \column {
        \italic "Troisième Couplet"
        "Tircis, soyez mieux informé"
        "De mon fort & du vôtre,"
        "Ingrat, vous estes seul aimé,"
        "Je n'en aime point d'autre;"
        "Objet de mes tendres amours,"
        "Vous pouvez me voir tous les jours."
      }
      \hspace #0.1 
      \column {
        \italic "Quatrième Couplet"
        "Je passois autrefois chez vous"
        "Tous les jours de ma vie:"
        "Privé d'un commerce si doux"
        "Je languis, je m'ennuye;"
        "Helas! Brunete mes amours,"
        "Quand vous verray-je tous les jours?"
      }
      \hspace #0.1 
      \column {
        \italic "Quatrième Couplet"
        "Je passois autrefois chez vous"
        "Tous les jours de ma vie:"
        "Privé d'un commerce si doux"
        "Je languis, je m'ennuye;"
        "Helas! Brunete mes amours,"
        "Quand vous verray-je tous les jours?"
      }
      \hspace #0.1
    }
    \vspace #1
    \fill-line {
      \hspace #0.1
      \column {
        \italic "Autres Couplets"
        "J'ay voulu, pour me rendre heureux,"
        "Vous voir & vous entendre:"
        "Que l'un & l'autre est dangereux,"
        "Quand on a le coeur tendre?"
        "Je vois où je vais m'engager;"
        "Mais je ne crains point le danger."
      }
      \hspace #0.1 
      \column {
        \italic "Second Couplet"
        "S'il est vray qu'à l'Amour constant"
        "Il n'est rien d'impossible,"
        "Le mien trouvera quelque instant"
        "Où vous serez sensible;"
        "Brunete, que ne voulez-vous"
        "Avancer des moments si doux?"
      }
      \hspace #0.1 
      \column {
        \italic "Troisième Couplet"
        "Non, jamais vos divins appas"
        "N'ont faut tant de conquêtes:"
        "A quatorze ans vous n'estiez pas"
        "Si belle que vous estes;"
        "Objet de mes tendres amours,"
        "Vous embelissez tous les jours."
      }
      \hspace #0.1
    }
    \vspace #1
    \fill-line {
      \hspace #0.1
      \column {
        \italic "Quatrième Couplet"
        "Vos yeux sont devenus plus doux"
        "Et vos couleurs plus vives:"
        "Tous les Bergers souffrent pour vous,"
        "Sur ces aimables rives,"
        "Helas! Brunete mes amours,"
        "Vous embelissez tous les jours."
      }
      \hspace #0.1 
      \column {
        \italic "Cinquième Couplet"
        "De tous les Bergers de ces bois"
        "Je suis le plus fidele:"
        "De cent Bergeres que je vois"
        "Vous estes la plus Belle;"
        "Objet de mes tendres amours,"
        "Vous embellissez tous les jours."
      }
      \hspace #0.1 
      \column {
        \italic "Sixième Couplet"
        "Des Bergers qu'Amour a soûmis"
        "A vôtre loy sévere,"
        "A qui donnerez-vous le prix,"
        "Mon aimable Bergere?"
        "Helas! que je serois heureux,"
        "Si c'estoit au plus amoureux!"
      }
      \hspace #0.1
    }
    \vspace #1
    \fill-line {
      \hspace #0.1
      \column {
        \italic "Septième Couplet"
        "On m'a vû souffrir mille maux"
        "Avec tant de confiance,"
        "Que je devrois sur mes Rivaux"
        "Avoir la preference;"
        "Mais, helas! le plus amoureux,"
        "N'est pas toûjours le plus heureux."
      }
      \hspace #0.1 
      \column {
        \italic "Huitième Couplet"
        "Ne croyez pas que vos mépris"
        "Epuisent ma confiance:"
        "Quand vos rigueurs seroient le prix"
        "De ma perseverance,"
        "J'aymerois mieux perdre le jour,"
        "Que de vois finir mon amour."
      }
      \hspace #0.1 
      \column {
        \italic "Autre Couplet"
        "Plus je vois la charmante Iris,"
        "Plus je sens que je l'aime:"
        "Ainsi que les cruels mépris"
        "Ma confiance est extrême;"
        "Helas! sa haine & mon amour,"
        "Augmenteront-ils chaque jour?"
      }
      \hspace #0.1
    }
    \vspace #1
    \fill-line {
      \hspace #0.1
      \column {
        \italic "Autre Couplet"
        "Le doux Printemps est de retour"
        "Et la plaine est fleurie,"
        "Zephire & Flore font l'amour,"
        "Il n'est que toy, Silvie,"
        "Qui n'as jamais voulu songer"
        "A trouver l'heure du Berger."
      }
      \hspace #0.1 
      \column {
        \italic "Autres Couplets"
        "Vous ne comptez point comme moy"
        "Les moments de l'absence,"
        "Et c'est-là mon unique employ"
        "Hors de vôtre presence;"
        "Je commence à m'en rebuter,"
        "Vous m'en donnez trop à compter"
      }
      \hspace #0.1 
      \column {
        \italic "Second Couplet"
        "Autrefois fidele, & constant"
        "Je répandois des larmes,"
        "A present je vis plus content"
        "Je méprise vos charmes;"
        "Brunette, je sçay de vos tours,"
        "Vous ne ferez plus mes amours."
      }
      \hspace #0.1
    }
  }
}
