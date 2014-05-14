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
    \vscoul c d4
    g, \vpmordant a2
    bes4. c8 d4
    g, \vpmordant a2
    bes c4
    d4. ees8 d4
    c4 \vpmordant c2
    bes2.
    c4. d8 a4
    bes \vpmordant a2
    g2.
  }
}

AAafLyrics = \lyricmode {
  La Ber- gere An- net- te,
  Sur les bords d'un ruis- seau,
  Fi- loit sa que- noüil- let- te,
  En gar- dant son Trou- peau:
  Le Ber- ger Tir- cis qui l'ai- me
  Plus que luy- mê- me,
  Luy ra- con- toit ain- si
  son a- mou- reux sou- cy.
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
  s
  s
  s
  s
  s
  s
  s
  s
  s
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
    g2 f4
    ees2 d4
    ees c2
    g' f4
    ees c2
    g2.
    g'4. a8 bes4
    ees, f2
    bes,4. a8 g4
    fis2.
    g4 d2
    g2.
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
    \fill-line {
      \hspace #0.1
      \column {
        \italic "Second Couplet"
        "Jeune Pastourelle,"
        "Ton oeil est plein d'appas:"
        "Mais ton humeur cruelle,"
        "Ne luy ressemble pas."
        "Faut-il que ton coeur ignore,"
        "Que je t'adore?"
        "Pourquoi s'il le scait bien,"
        "N'en découvre-t'il rien?"
      }
      \hspace #0.1 
      \column {
        \italic "Troisième Couplet"
        "Lorsque dans la Lande,"
        "Où nous êtions tous deux,"
        "Je mis une Guirlande"
        "Dessus tes blonds cheveux,"
        "Tu me traitas en colere,"
        "De Temeraire;"
        "Et de ta blanche main,"
        "Tu la rompis soudain"
      }
      \hspace #0.1 
      \column {
        \italic "Quatrième Couplet"
        "Un jour dans la danse,"
        "Un Berger inconnu,"
        "Eût assez d'assûrance,"
        "Pour baiser ton sein nud."
        "Tu ne fis point la farouche;"
        "Et quand je touche"
        "Seulement ton habit,"
        "Tu rougis de dépit."
      }
      \hspace #0.1
      \column {
        \italic "Cinquième Couplet"
        "L'éclat de tes charmes,"
        "Enflamme mes desirs,"
        "Il m'en coûte des larmes,"
        "Des chagrins, des soûpirs."
        "Tu le vois belle Inhumaine,"
        "Sans être en peine,"
        "Si je pourray souffrir"
        "Tes rigueurs, sans mourir."
      }
      \hspace #0.1
    }
    \vspace #1
    \fill-line {
      \hspace #0.1
      \column {
        \italic "Sixième Couplet"
        "Et qu'il te souvienne,"
        "Que gravant d'un coûteau,"
        "Ta devïse & la mienne,"
        "Sur le tronc d'un ormeau,"
        "Pour toy ce fut une offense."
        "Par un absence"
        "Qui dura plus d'un mois,"
        "Tu me mis aux abois."
      }
      \hspace #0.1 
      \column {
        \italic "Septième Couplet"
        "Mes bleds dans la plaine,"
        "Mes vins sur les côteaux;"
        "Milles Bêtes à laine,"
        "Des Chèvres, des Taureaux;"
        "Mon adresse & mon courage,"
        "Mon parentage,"
        "Ma tendresse, ma foy,"
        "Ne peuvent rien sur toy."
      }
      \hspace #0.1 
      \column {
        \italic "Huitième Couplet"
        "Outre la Musette,"
        "Dont je t'ay fait un don,"
        "Je grave une Houlette,"
        "Des chiffres de ton nom;"
        "Dans peu de jours je l'acheve,"
        "Et je t'éleve"
        "Les petits d'un Faisant,"
        "Pour te faire un present."
      }
      \hspace #0.1
      \column {
        \italic "Neuvième Couplet"
        "Dans nôtre Prairie,"
        "Un Loup battit nos Chiens,"
        "Menaçant en furie"
        "Tes Troupeaux & les miens;"
        "Tu vis avec quelle adresse,"
        "Quelle vitesse,"
        "La houlette à la main,"
        "J'attaquay l'Inhumain."
      }
      \hspace #0.1
    }
    \vspace #1
    \fill-line {
      \hspace #0.1
      \column {
        \italic "Dixième Couplet"
        "Dans nôtre Village"
        "Un Soldat effronté,"
        "Voulut faire un outrage"
        "A ta jeune Beauté;"
        "Si quelqu'un de l'assistance,"
        "Prit ta deffense"
        "Plus hardiment que moy;"
        "Je m'en rapporte à toy."
      }
      \hspace #0.1 
      \column {
        \italic "Onzième Couplet"
        "Quand de nos Montagnes"
        "Un grand Ours descendu,"
        "Rendit de ces Campagnes"
        "Tout le Peuple éperdu;"
        "Nos Bergers qui s'étonnerent,"
        "T'abandonnerent:"
        "Tu vis, sans me vanter,"
        "S'il pût m'épouvanter."
      }
      \hspace #0.1 
      \column {
        \italic "Douzième Couplet"
        "Je t'offris sa patte,"
        "Car j'en fus le vainqueur,"
        "Ce fut là, Belle Ingrate,"
        "Que je connus ton coeur."
        "Helas! de m'être obligée,"
        "Presque enragée,"
        "Daignas-tu seulement,"
        "Me parler un moment ?"
      }
      \hspace #0.1
      \column {
        \italic "Treizième Couplet"
        "Satisfay ta haine;"
        "Si mon trépas te plaît,"
        "Aimable Inhumaine,"
        "Prononce m'en l'Arrest:"
        "Pour peu que mon sort te touche,"
        "Et qu'à ta bouche"
        "Il en coûte un soûpir,"
        "Trop heureux de mourir!"
      }
      \hspace #0.1
    }
    \vspace #1
    \fill-line {
      \hspace #0.1
      \column {
        \italic "Quatorzième Couplet"
        "La jeune Bergere"
        "Pendant tout ces discours,"
        "D'une main ménagere,"
        "Alloit filant toûjours;"
        "Mais son ame fut atteinte"
        "De cette plainte,"
        "Son fuseau par trois fois"
        "Luy tomba de ses doigts."
      }
      \hspace #0.1 
      \column {
        \italic "Quinzième Couplet"
        "La Rose vermeille,"
        "Quand le Soleil la peint,"
        "N'est point encor pareille"
        "A l'éclat de son teint;"
        "C'est une discrette honte"
        "Qui la surmonte,"
        "Que ce jeune vainqueur"
        "Soit Maître de son coeur."
      }
      \hspace #0.1 
      \column {
        \italic "Autre cheute de la même Chanson"
        "Il finit sa plainte,"
        "La Bergere s'en rit;"
        "Il en eût l'ame atteinte"
        "De rage & de dépit:"
        "Puis sans pleurer davantage"
        "D'un tel outrage,"
        "La voyant rire ainsi,"
        "Se mit à rire aussi."
      }
      \hspace #0.1
    }
  }
}
