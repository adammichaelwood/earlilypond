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
  \header {
    piece = ""
    number = ""
    subopus = ""
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
  
  \tocItem \markup { "Pavane, livre 4, Fo. II" \hspace #3 \italic "Attaingnant"}
  \score{\ABScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "Pavane, livre 4, Fo. VII" \hspace #3 \italic "Attaingnant" }
  \score{\ACScore}
  \tocItem \markup { "Gaillarde, livre 4, Fo. VII" \hspace #3 \italic "Attaingnant"}
  \score{\ADScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "Pavane, livre 4, Fo. IX" \hspace #3 \italic "Attaingnant" }
  \score{\AEScore}
  \tocItem \markup { "Gaillarde, livre 4, Fo. IX" \hspace #3 \italic "Attaingnant"}
  \score{\AFScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "Pavane 6 \"1000 ducas\"" \hspace #3 \italic "Susato" }
  \score{\AGScore}
  \tocItem \markup { "Pavane 7" \hspace #3 \italic "Susato"}
  \score{\AHScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "Tirsi, prima parte" \hspace #3 \italic "Marenzio"}
  \score{\AIScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "Tirsi, seconda parte" \hspace #3 \italic "Marenzio"}
  \score{\AJScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "Tirsi, terza parte" \hspace #3 \italic "Marenzio"}
  \score{\AKScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "Mia Benigna" \hspace #3 \italic "Bossinensis"}
  \score{\ALScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "Ahe debosar" \hspace #3 \italic "Bossinensis"}
  \score{\AMScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "Len Chamor" \hspace #3 \italic "Bossinensis"}
  \score{\ANScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "Canzon" \hspace #3 \italic "Gabrieli"}
  \score{\AOScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "Margaretha" \hspace #3 \italic "Widman" }
  \score{\APScore}
  \tocItem \markup { "Johanna" \hspace #3 \italic "Widman"}
  \score{\AQScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "Magdalena" \hspace #3 \italic "Widman" }
  \score{\ARScore}
  \tocItem \markup { "Anna" \hspace #3 \italic "Widman"}
  \score{\ASScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "Christina" \hspace #3 \italic "Widman" }
  \score{\ATScore}
  \tocItem \markup { "Sibylla" \hspace #3 \italic "Widman"}
  \score{\AUScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "Maria" \hspace #3 \italic "Widman" }
  \score{\AVScore}
  \tocItem \markup { "Dorothea" \hspace #3 \italic "Widman"}
  \score{\AWScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "Sophia" \hspace #3 \italic "Widman"}
  \score{\AXScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "Padouana 6" \hspace #3 \italic "Schein"}
  \score{\AYScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "Fortune My Foe" \hspace #3 \italic "Dowland" }
  \score{\AZScore}
  \tocItem \markup { "When Daphne" \hspace #3 \italic "Anon."}
  \score{\BAScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "Courente" \hspace #3 \italic "Schein"}
  \score{\BBScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "IV. Pavane, à 5" \hspace #3 \italic "Schein"}
  \score{\BCScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "Gagliarde, à 5" \hspace #3 \italic "Schein"}
  \score{\BDScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "Courante, à 5" \hspace #3 \italic "Schein"}
  \score{\BEScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "Allemande, à 4" \hspace #3 \italic "Schein"}
  \score{\BFScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "Triste Espana sin ventura" \hspace #3 \italic "del Encina"}
  \score{\BGScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "Una sanosa" \hspace #3 \italic "del Encina"}
  \score{\BHScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "A tal perdida tna triste, en Ré" \hspace #3 \italic "del Encina"}
  \score{\BIScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "A tal perdida tan triste, en Sol" \hspace #3 \italic "del Encina"}
  \score{\BJScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \tocItem \markup { "16. Pavane de Spaigne (Pavaniglia)" \hspace #3 \italic "Caroubel"}
  \score{\BKScore}
  \pageBreak
  \score{\blankStaves}
  \pageBreak
  
  \markup\null
}
