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
\include "../../../include/notes.ily"


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

\paper {
  bookTitleMarkup = \pieceBigTitleMarkupNoSource
  scoreTitleMarkup = \suiteSimpleTitleMarkup
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
  \markup {A Son Altesse Sérénissime}
}

% Avertissement
\bookpart {
  \paper {
    bookTitleMarkup = \markup\null
  }
  \markup {Avertissement}
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

Avoice = \relative c'' {
  \clef soprano
  \key d \minor
  \bin
  \partial 2 a2
  \autoBeamOff
  bes4 a g fis
  g2
}

Alyrics = \lyricmode {
  Le beau Ber- ger Tir- cis,
}

Abassefig = \figuremode {
  <_+>2
  s4 <6> <6> <_+>
  s2
}

Abasse = \relative c {
  \clef bass
  \key d \minor
  \bin
  \autoBeamOff
  \partial 2 d2
  g4 f ees d
  g, g'
}
\bookpart {
  \header {
    suite = "Suite en G re Sol Bemol"
  }
  
  \score {
    \new StaffGroup  <<
      \new Voice = "voix" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \Avoice >>
      \new Lyrics \lyricsto voix { \Alyrics }
      \new Staff <<
        \override Staff.BarLine #'allow-span-bar = ##f
        #(set-accidental-style 'forget)
        \figuremode { \Abassefig }
        \Abasse
      >>
    >>
    \header {
      piece = "Le beau berger Tircis"
    }
  }
}