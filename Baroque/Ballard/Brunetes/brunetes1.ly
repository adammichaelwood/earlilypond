%%  brunetes1.ly
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

\version "2.16.2"
\include "global.ily"


\header {
  composer = "Christophe Ballard"
  composerDate = "1671-1715"
  date = "1724"
  title = \markup{\caps{"Brunetes"}}
  subtitle = \markup { \center-column {
    \line { \caps{" ou "} }
    \caps {"petits airs tendres,"}
    \caps{"avec les doubles et la basse-continue;"}
    \caps{"melees de chansons a danser"}
  } }
  opus = \markup {\caps {"Tome Premier"}}
  editor = "Benjamin Coudrin"
  %image = \markup { \epsfile #X #40 #"cover.eps" }
  image = \markup { \vspace #6 }
  sources = \markup \left-column {
    "Sources : "
    \concat {"[1] " \italic "Brunetes ou petits airs tendres avec les doubles et la basse-continue mélées de chansons à danser" ", tome 1, Paris, Christoph Ballard, 1703, Bibliothèque Nationale de France"}
    \with-url #"http://catalogue.bnf.fr/ark:/12148/cb39781246k" "http://catalogue.bnf.fr/ark:/12148/cb39781246k"
    \concat {"[2] " \italic "Le Printemps, cantate françoise ou musique de chambre à voix seule avec simphonie et la basse-continue" ", Composée par Mr Boismortier, 1724" }
    \with-url #"http://catalogue.bnf.fr/ark:/12148/cb39781324j" "http://catalogue.bnf.fr/ark:/12148/cb39781324j"
  }
  notes = ""
}

\layout {
  \layoutCommons
}

% Front page
\bookpart {
  \header {
    subtitle = \markup { \center-column {
      \line { \epsfile #X #10 #"../../../include/images/sepdesleft.eps" \caps{" ou "} \epsfile #X #10 #"../../../include/images/sepdesright.eps" }
      \caps {"petits airs tendres,"}
      \caps{"avec les doubles et la basse-continue;"}
      \caps{"melees de chansons a danser"}
    } }
  }
  \paper {
    bookTitleMarkup = \titlePageMarkupImage
    print-page-number = ##f
  }
  \markup\null
}

% Blank page
\bookpart {
  \paper {
    bookTitleMarkup = \markup\null
    print-page-number = ##f
  }
  \markup\null
}

% Notes
\bookpart {
  \header {
      subtitle = \markup { \center-column {
        \caps{" ou "}
        \caps {"petits airs tendres,"}
        \caps{"avec les doubles" }
        \caps {"et la basse-continue;"}
        \caps{"melees"}
        \caps {"de chansons a danser"}
      }	 }
      subsubtitle = \markup { \center-column {
        \italic { "Recueillies, & mises en ordre par"}
        \caps {"Christophe Ballard,"}
        \italic {"seul Imprimeur de Musique, & Noteur"}
        \italic {"de la Chappelle du Roy"}
      }}
  }
  \paper {
    bookTitleMarkup = \bookNotePageMarkup
    print-page-number = ##f
  }
  
  \markup {
    \column {
      \vspace #1
      "Sources : "
      \wordwrap-lines {"[1] " \italic "Brunetes ou petits airs tendres avec les doubles et la basse-continue mélées de chansons à danser," "tome 1" "Paris, Christophe Ballard, 1703, Bibliothèque Nationale de France"}
      \with-url #"http://catalogue.bnf.fr/ark:/12148/cb396168711/PUBLIC" "http://catalogue.bnf.fr/ark:/12148/cb396168711/PUBLIC"
      \wordwrap-lines {"[2] " \italic "Brunetes ou petits airs tendres" "Christophe Ballard, 1703, facsimile (online)"}
      \with-url #"http://www.cowderoy.net/brunetes" "http://www.cowderoy.net/brunetes/"
      \wordwrap-lines {"[3] " \italic "Brunetes ou petits airs tendres avec les doubles et la basse-continue mélées de chansons à danser," "tome 1" "Paris, Christophe Ballard, 1703, OpenLibrary"}
      \with-url #"https://openlibrary.org/books/OL24194778M/Brunetes" "https://openlibrary.org/books/OL24194778M/Brunetes"
    }
  }
  
  \frenchLicence
}

% Notes editoriales
% - Les agréments sv et son inverse ~sA ne sont pas gérés
%   compléter les fonctions \vsmarcato et \vsimarcato ou ajouter aux notes
% - Les reprises des deuxièmes parties ne sont pas toujours claires
%   Par choix nous n'avons pas mis de reprises pour les deuxièmes parties
%   au moins deux fois plus longues que les premières parties (doubles ?)
%   et nous les avons mises pour les deuxièmes parties courtes que les 1e
% - Dans l'ensemble les congruences sont remplacées par des reprises standard
% - p4 (PDF p23) 4e systeme, ornement inconnu
%   compléter la fonction \vflat ou ajouter aux notes
% - p18 (PDF p37) 4e système, dernière mesure
%   ornement non identifié. A trouver ou ajouter aux notes/footnotes
% - p18 (PDF p37) 5e système dernière mesure
%   sous "traits" il y a une ligne non identifiée. Statuer.
% - p18 (PDF p37) dernier système 1e mesure

%   la 2e double semble pointée, vérifier (pour le moment, le point est ajouté)
% - Les paragraphes de couplets supplémentaires sont en général mal alignés
%   Trouver une technique pour aligner les blocs de couplets sur une grille

% Blank page
\bookpart {
  \paper {
    bookTitleMarkup = \markup\null
    print-page-number = ##f
  }
  \markup\null
}

% Dedicace
\bookpart {
  \paper {
    bookTitleMarkup = \markup\null
  }
  \markup \column {
    \vspace #2
    \fill-line { \fontsize #3 \bold \caps "Epistre" }
    \vspace #4
    \fill-line { \fontsize #1 \caps "A Son Altesse Serenissime"}
    \fill-line { \fontsize #2 \caps "Madame la Princesse De Conty,"}
    \fill-line { \fontsize #1 \caps "Douairiere."}
    \vspace #4
  }
  \markup {\caps {Madame,}}
  \markup \column {
    \vspace #1
  }
  \markup \justify {
    Le Recüeil que je prends la liberté d'offrir à vôtre \caps{Altesse} est
    un tribut qui luy est justement dû. Il contient ce qu'il y a d'Airs
    François les plus parfaits dans le caractère Tendre & Naturel ; 
    Hé qui peut mieux sentir que Vôtre \caps {Altesse} ces graces
    naïves & touchantes ? Elle qui sçait si bien l'art de gagner les coeurs,
    par ce charme secret & cet attrait puissant qu'une heureuse
    Naissance a répandus dans ses moindres discours,
    & ses moindres actions. Je suis avec un tres profond respect,
  }
  \markup \column{
    \vspace #1
  }
  \markup \center-column {
    \fill-line { \caps "de Votre Altesse Serenissime," }
  }
  \markup \column {
    \vspace #1
  }
  \markup \center-column { 
    \fill-line {\caps "MADAME,"}
  }
  \markup \column {
    \vspace #5
  }
  \markup \right-column {
    \right-align {"Le tres humble & tres"}
    \right-align {"obeïssant Serviteur,"}
    \right-align {\caps "C. Ballard."}
    \fill-line {" "}
  }
}

% Blank page
\bookpart {
  \paper {
    bookTitleMarkup = \markup\null
    print-page-number = ##f
  }
  \markup\null
}

% Avertissement
\bookpart {
  \paper {
    bookTitleMarkup = \markup\null
  }
  \markup \column {
    \vspace #2
    \fill-line { \fontsize #3 \bold \caps "AVERTISSEMENT." }
    \vspace #4
  }
  \markup \justify {
    Il y a peu de Recüeils qui doivent être reçûs plus agréablement que celuy-cy,
    si l'on en juge par l'empressément avec lequel il est attendu du Public.
    Les Airs dont il est composé ont été appellez \caps {Brunetes}, par rapport
    à celuy qui commence \italic {Le beau Berger Tircis}, & à celuy qui finit par
    ces paroles, \italic {Helas, Brunete, mes amours}. Une preuve de la bonté de
    ces Airs, c'est que malgré leur ancienneté, on ne laisse pas de les
    apprendre & de les chanter encore tous les jours ; ceux même qui possedent
    la Musique dans toute son étendüe, se font un plaisir d'y goûter ce
    caractere Tendre, Aisé, Naturel, qui flatte toûjours, sans lasse jamais,
    & qui va beaucoup plus au coeur qu'à l'esprit.
  }
  \markup \justify {
    \hspace #2
    Pour peu qu'on veuille jetter les yeux sur le Recüeil de ces Airs, on n'aura
    pas de peine à découvrir quels soins il a fallu se donner pour les publier
    dans toute leur perfection. On les a rangez sous six différentes Suites de
    Tons, dans lesquels on a jetté toute la variété possible, de sorte que des
    Airs simples & passionnez, on passe à leurs Doubles : Des Doubles aux Airs
    de Mouvement : De ces Airs aux Duo : Et des Duo aux Trio. Enchaînement qui,
    sans doute, ne déplaira pas aux Gens de l'Art, & qui ne laissera pas
    d'occuper agreablement ceux qui ne font aucune profession de Musique.
  }
  \markup \justify {
    \hspace #2
    On n'a pas apporté moins d'exactitude à l'Impression des Paroles, qu'on
    trouvera purgées d'un nombre infini de fautes qui s'étoient glissées
    dans les Copies qui en ont couru. Entre les differents Couplets on en a
    fait choix des plus connus, & de ceux qui renfermoient quelque sel,
    & quelque agréement : Pour les autres qui ne signifioient rien, ou dont
    le stile & les pensées étoient fades & ennuïeues, on a crû les devoir
    supprimer. D'ailleurs, lorsqu'il s'est rencontré des Airs d'un seul
    Couplet assez agreables pour être repetez, on y a joint de nouveaux
    Couplets, qui en sont une suite naturelle.
  }
  \markup \justify {
    \hspace #2
    A l'égard des douze Chansons à Danser en Rond, qui finissent ce Volume,
    on les a choisies entre les meilleures de cette espece, & on les a fait
    suivre par leurs Couplets qui poivoient le souffrir ; mais on s'est fait
    une Loy, de n'y rien mêler, aussi-bien que dans le reste de ce Volume,
    qui pût choquer la pudeur, & la bienseance; & l'on se flatte que cette
    délicatesse sera du goût de tous les honnêtes Gens.
  }
  \markup \justify {
    \hspace #2
    Quoique l'on ait pris soin de joindre les Basses-Continües à tous les Airs
    tendres, on n'a pû neanmoins se dispenser de donner à ce Volume, qui en
    renferme un tres-grand nombre, une forme qui le rendît plus aisé à manier &
    à transporter.
  }
}

% Blank page
\bookpart {
  \paper {
    bookTitleMarkup = \markup\null
    print-page-number = ##f
  }
  \markup\null
}

% Table des suites
\bookpart {
  \paper {
    #(define page-breaking ly:minimal-breaking)
    tocTitle = \markup {\center-column{\caps{"Table"} \fontsize #-1 {\center-column {
      "des six Suites de Tons, sous lesquels" "sont rangez les Brunetes, ou Petits"
      "Airs Tendres de ce Volume"}}}}
    bookTitleMarkup = \markup\null
    tocTitleMarkup = \markup \column {
      \vspace #2
      \fontsize #6 \fill-line { \tocTitle }
      \vspace #2
    }
  }
  \markuplist \table-of-contents
}

% Table alphabétique
\bookpart {
  \paper {
    #(define page-breaking ly:minimal-breaking)
    tocTitle = \markup {\center-column{\caps{"Table alphabetique"} \fontsize #-1 {\center-column {
      "Des Brunetes, ou Petits Airs Tendres" "divisez en six Suites de Tons"}}}}
    bookTitleMarkup = \markup\null
    tocTitleMarkup = \markup \column {
      \vspace #2
      \fontsize #6 \fill-line { \tocTitle }
      \vspace #2
    }
  }
  \markuplist \table-of-contents
}

% Table des chansons à danser
\bookpart {
  \paper {
    #(define page-breaking ly:minimal-breaking)
    tocTitle = \markup {\center-column{\caps{"Table"} \fontsize #-1 {\center-column {\caps{
      "Des chansons"} \caps{ "A danser en rond"}}}}}
    bookTitleMarkup = \markup\null
    tocTitleMarkup = \markup \column {
      \vspace #2
      \fontsize #6 \fill-line { \tocTitle }
      \vspace #2
    }
  }
  \markuplist \table-of-contents
}

% Suites
\include "Tome1/tome1.ly"
\bookpart {
  \header {
    suite = "Suite en G re Sol Bemol"
    opus = ""
  }
  \paper {
    bookTitleMarkup = \suiteSimpleTitleMarkup
    scoreTitleMarkup = \scoreSimpleTitleMarkup
  }
  
  \tocItem \markup "Le beau berger Tircis"
  \score {\AAaaScore}
  \markup {\AAaaLyricsSup}
  \pageBreak

  \tocItem \markup "J'ay passé deux jours sans vous voir"  
  \score {\AAabScore}
  \markup {\AAabLyricsSup}
  \pageBreak
  
  \tocItem \markup "Je suis charmé d'une Brune"  
  \score {\AAacScore}
  \markup {\AAacLyricsSup}
  \pageBreak
  
  \tocItem \markup "Mon cher troupeau (Trio)"  
  \score {\AAadScore}
  \markup {\AAadLyricsSup}
  \markup \column {
    \vspace #10
    \fill-line {" "}
  }
  \pageBreak
  
  \tocItem \markup "C'est dans ces lieux où regne l'innocence"  
  \score {\AAaeScore}
  \markup {\AAaeLyricsSup}
  
  \tocItem \markup "La Bergere Annette"  
  \score {\AAafScore}
  \markup {\AAafLyricsSup}
  \pageBreak
  
  \tocItem \markup "Un de nos Bergers"  
  \score {\AAagScore}
  \markup {\AAagLyricsSup}
  \markup \column {
    \vspace #8
    \fill-line {" "}
  }
  \pageBreak
  
  \tocItem \markup "Vous partez, belle Climene (Trio)"  
  \score {\AAahScore}
  \markup {\AAahLyricsSup}
  \pageBreak
}