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
\include "../../../include/format.ily"
\include "../../../include/notation.ily"


\header {
  composer = "Christophe Ballard"
  composerDate = "1671-1715"
  date = "1724"
  title = "Brunetes"
  subtitle = \markup { \center-column {
    \line { \epsfile #X #10 #"../../../include/images/sepdesleft.eps" \caps{" ou "} \epsfile #X #10 #"../../../include/images/sepdesright.eps" }
    \caps {"petits airs tendres,"}
    \caps{"avec les doubles et la basse-continue;"}
    \caps{"melees de chansons a danser"}
  } }
  opus = "Tome Premier"
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

% Front page
\bookpart {
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
  
  \markup \column {
    \vspace #10
    \justify \fontsize #-2 {
      La présente édition est libre. Elle est distribuée sans aucune garantie, dans les limites permises par la loi. Vous pouvez
      en faire usage, la redistribuer et/ou la modifier selon les termes de la licence Do What The Fuck You Want To Public Licence,
      Version 2, telle que publiée par Sam Hocevar. Voir \with-url #"http://sam.zoy.org/wtfpl/COPYING" "http://sam.zoy.org/wtfpl/COPYING"
      pour plus de détails.
    }
    \vspace #1
    \justify \fontsize #-2 {
      Cette édition fait partie du projet Earlilypond. Les fichiers sources du projet et de cette édition sont
      accessibles, distribuables et modifiables selon les termes de la Do What The Fuck You Want To Public Licence, Version 2, depuis la page web
      du projet \with-url #"https://code.google.com/p/earlilypond/" "https://code.google.com/p/earlilypond/"
    }
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

% Table of contents
\bookpart {
  \paper {
    #(define page-breaking ly:minimal-breaking)
    tocTitle = "Table des Matières"
    bookTitleMarkup = \markup\null
    tocTitleMarkup = \markup \column {
      \vspace #2
      \fontsize #6 \fill-line { \tocTitle }
      \vspace #2
    }
  }
  \markuplist \table-of-contents
}

% Dedicace
\bookpart {
  \paper {
    bookTitleMarkup = \markup\null
  }
  \markup {A Son Altesse Sérénissime}
}

% Avertissement
\bookpart {
  \paper {
    bookTitleMarkup = \markup\null
  }
  \markup {Avertissement}
}

% Music
%\include "music/scores.ly"
%\bookpart {
  %\paper {
    %bookTitleMarkup = \pieceTitleMarkup
    %indent = 30\mm
  %}
  % Verse 1
  %\score { \AAmusic \layout{\layoutCommons} }
%}
\score { c }