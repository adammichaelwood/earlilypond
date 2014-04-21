%%  jaipassedeuxjourssansvous.ly
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

AAabVerseUnNotes = {
  \repeat volta 2 {
    r4 g a4. a8
    bes4. a16*2/3 [g a] \vpmordant a4. g8
    fis4. g8 a4 a8 [bes16 c]
    \vscoul bes4. a8 \vpmordant a2
  }
  \alternative {
    {\partial 4 g4}
    {g2 r8 g g g}
  }
  d'4. c8 c4. d8
  \vpmordant bes4. bes8 a4. bes8
  c8 [a] d4 \vpmordant bes2
  \vpmordant a4. g8 \vscoul a4. a8
  \repeat volta 2 {
    bes4 a16 [g8 a16] \vpmordant a4. g8
    fis4. g8 a4 bes16 [a8 bes16]
    c8 [a] d [\vpmordant c16 bes] \vpmordant a4. g8
  }
  \alternative {
    {g4. g8 \vscoul a4. a8}
    {g1}
  }
  \bar "||" \break
}

AAabVerseDeuxNotes = {
  \deux
  \repeat volta 2 {
    s4 g4^\markup{\italic "Second Couplet"} a a
    bes16 [a8 bes16] c16*4/3 [bes a] g8 [fis] g4
    fis4 g8*2/3 [fis g] a8 [g] a16*4/3 [bes c]
    d16 [c bes c a16*2] bes8 \vpmordant a2
  }
  \alternative {
    {\partial 4 g4}
    {g4 r8 g g [a] bes [c]}
  }
  d [e] f16 [d8 e16] d4 (bes8) c16 c
  (d4) c8 [bes] \vpmordant a4 bes16 [a8 bes16]
  c8 [a] d4 c (bes8 [a])
  \vpmordant a4 r8 g \vscoul a4. a8
  bes4 a16 [g8 a16] bes8. (c16 bes) [\vcoul a] bes [g]
  fis4 g8*2/3 [fis g] a4 bes8*2/3 [a bes]
  c8 [a] d8 [\vflat c16 bes] \vpmordant a4. g8
  g4 r8 g \vsmartel a4. bes8
  a8 [g] a16 [g8 a16] bes8 ([a] \vpmordant g16 [fis]) g8
  fis4 e16*4/3 [d e] f [g a] bes [a bes]
  c16 a8*1/2 d16 [ees] (d8 [\vpmordant c16 bes]) \vpmordant a4. g8
  g1
  \bar "|."
}

AAabVoice = \relative c'' {
  \clef soprano
  \key d \minor
  \bla
  \autoBeamOff
  \AAabVerseUnNotes
  \AAabVerseDeuxNotes
}

AAabLyricsUn = \lyricmode {
  J'Ay pas- sé deux jours sans vous voir,
  Plus cru- els qu'on ne pen-
  se:
  se: Je se- rois  
  mort de de- ses- poir
  D'u- ne plus lon- gue~ab- sen- ce;
  He- las! Bru- 
  \repeat volta 2 {
    ne- te mes a- mours,
    Ne puis- je vous voir
    tous les
  }
  \alternative {
    {jours! He- las Bru-...}
    {jours!}
  }
}

AAabLyricsDeux = \lyricmode {
  Je ne suis que trop in- for- mé
  De mon fort & du vô-
  tre:
  tre: C'est peu de
 
  n'ê- tre point ai- mé,
  Vous en ai- mez un au- tre:
  He- las! Bru- ne- te mes a- mours,
  Le vou- ez- vous ai- mer tou- jours!
  He- las! Bru- ne- te mes a- mours,
  Le vou- lez- vous ai- mer tou- jours!
}

AAabFiguresUn = \figuremode {
  \repeat volta 2 {
    s1
    s2 <6>
    s1
    s
  }
  \alternative {
    {s4}
    {s1}
  }
  s1
  s
  s
  <_+>2 s
  \repeat volta 2 {
    <6> <6>4. <5/>8
    s1
    s
  }
  \alternative {
    {s1}
    {s1}
  }
}

AAabFiguresDeux = \figuremode {
  \repeat volta 2 {
    s1
    s2 <6>
    s1
    s
  }
  \alternative {
    {s4}
    {s1}
  }
  s1
  s
  s
  <_+>2 s

  <6>2 <6>4. <5/>8
  s1
  s
  s1
  
  <6>2 <6>4. <5/>8
  s1
  s
  s1
}

AAabBassNotesUn = \relative c' {
  \repeat volta 2 {
    g2 fis
    g c,
    d4. e8 fis2
    g4 c, d2
  }
  \alternative {
    {g,4}
    {g4 g'8 [f] ees2}
  }
  bes8 [c] d ees f4 f,
  bes2 f'
  fis g4 g,
  d2 d'
  \repeat volta 2 {
    d cis
    d4. e8 fis4 f
    ees bes8 [c] d4 d,
  }
  \alternative {
    {g2 \vferm d'}
    {g,1}
  }
}

AAabBassNotesDeux = \relative c' {
  \repeat volta 2 {
    g2 fis
    g c,
    d4. e8 fis2
    g4 c, d2
  }
  \alternative {
    {g,4}
    {g4 g'8 [f] ees2}
  }
  bes8 [c] d ees f4 f,
  bes2 f'
  fis g4 g,
  d2 d'
  d cis
  d4. e8 fis4 f
  ees bes8 [c] d4 d,
  g2 \vferm d'
  d cis
  d4. e8 fis4 f
  ees bes8 [c] d4 d,
  g1
}

AAabBass = \relative c {
  \clef bass
  \key d \minor
  \bla
  \autoBeamOff
  \AAabBassNotesUn
  \AAabBassNotesDeux
}

AAabScore = \score {
  \new StaffGroup  <<
    \new Voice = "Voice" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \AAabVoice
    >>
    \new Lyrics \lyricsto Voice	 {
      \AAabLyricsUn
      \AAabLyricsDeux
    }
    \new Staff \with { \consists "Volta_engraver" } <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \figuremode {
        \AAabFiguresUn
        \AAabFiguresDeux
      }
      \AAabBass
    >>
  >>
  \header {
    piece = "J'ay passe deux jours sans vous voir"
  }
}

AAabLyricsSup = \markup \fontsize #-1 {
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
    \vspace #1
    \fill-line {
      \hspace #0.1
      \column {
        \italic "Troisième Couplet"
        "Je vous vois aimer mes Rivaux,"
        "Sans m'en mettre en colere:"
        "J'ay choisi des plaisirs nouveaux,"
        "Un autre a sçu me plaire;"
        "Non, non, Brunete, de vos jours"
        "Vous ne ferez plus mes amours."
      }
      \hspace #0.1 
      \column {
        \italic "Quatrième Couplet"
        "Quoy! ne vous verray-je jamais"
        "La même impatience?"
        "Aimons du moins à communs frais,"
        "Avancez, quand j'avance."
        "Helas! ce commerce si doux"
        "Iris, que ne l'éprouvez-vous?"
      }
      \hspace #0.1 
      \column {
        \italic "Cinquième Couplet"
        "Helas! que ne m'est-il permis"
        "Après un coup si rude,"
        "De quitter ces lieux ennemis,"
        "Pour une solitude?"
        "Où je pourrois en liberté,"
        "Regretter a félicité."
      }
      \hspace #0.1
    }
  }
}
