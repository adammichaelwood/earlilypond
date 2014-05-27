%%  diminutions.ly
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
  composer = "Philippe Matharel"
  composerDate = "19xx-20xx"
  date = "1992"
  title = \markup{\caps{"Il Vero Modo"}}
  subtitle = \markup { \center-column {
    \caps {"DI DIMINUIR, CON TUTTE"}
    \caps{"LE SORTI DI STROMENTI"}
    "Di fiato, & corda, & di voce humana"
  } }
  subsubtitle = \markup { \center-column {
        \caps { "Di Filipo Mattarello"}
        \caps {"Detto D V G V D V"}
        "Capo de Concerti delli Stromenti fi fiato,"
        "della Illustriss. Concervatorio de TOLOSA"
      }}
  opus = \markup {\caps {"Libro Secondo"}}
  editor = "Benjamin Coudrin"
  image = \markup { \vspace #6 }
  sources = ""
  notes = ""
}

\layout {
  \layoutCommonsWithEmptyStaves
}

% Front page
\bookpart {
  \paper {
    bookTitleMarkup = \bookNotePageMarkup
    print-page-number = ##f
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

% Table des matières
\bookpart {
  \paper {
    #(define page-breaking ly:minimal-breaking)
    tocTitle = \markup {"Tavola"}
    bookTitleMarkup = \markup\null
    tocTitleMarkup = \markup \column {
      \vspace #2
      \fontsize #6 \fill-line { \tocTitle }
      \vspace #2
    }
  }
  \markuplist \table-of-contents
}

% Blank page
\bookpart {
  \paper {
    bookTitleMarkup = \markup\null
    print-page-number = ##f
  }
  \markup\null
}


% Blank Staves
blankStaves = \score {
  {
    \repeat unfold 12 { s1 \break }
  }
  \layout {
    indent = 0\in
    \context {
      \Staff
      \remove "Time_signature_engraver"
      \remove "Clef_engraver"
      \remove "Bar_engraver"
    }
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}

% Pieces
\include "pieces/liste.ly"
\bookpart {
  \paper {
    bookTitleMarkup = \markup\null
    scoreTitleMarkup = \scoreNumberedTitleMarkup
  }

  \markup{ \vspace #10 }
  \tocItem \markup { "Allemande 5" \hspace #3 \italic "Susato"}
  \score {\AAScore}
  \markup{ \vspace #4 }
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
}
