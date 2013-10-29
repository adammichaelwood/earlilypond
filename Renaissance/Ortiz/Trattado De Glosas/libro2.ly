%% libro2.ly
%% Trattado de Glosas, Diego Ortiz
%% Author : Benjamin Coudrin, 2013

\version "2.16.0"

% Options
#(ly:add-option 'urtext #f "Produce an Urtext version")

\header {
  tagline = ""
}

#(set-default-paper-size "a4")

\layout {
  \context {
    \Score
    \override SpacingSpanner #'uniform-stretching = ##t
    \override Stem #'neutral-direction = #1
    \override BarNumber #'stencil = #(eqv? #f (ly:get-option 'urtext))
  }
}

% Titling
\bookpart {
  \header {
    composer = "Diego Ortiz Tolledano"
    composerDate = "1510-1570"
    date = "1553"
    title = "Trattado de Glosas"
    subtitle = \markup \center-column { "sobre Clausulas y otros generos depuntos" "en la Musica de Violones nuevamente puestos en luz" }
    opus = "Libro secondo"
    publisher = \markup { "Copyright : " \char ##x00A9 " 2013 Earlilypond, Benjamin Coudrin" }
  }
  \paper {
    #(define page-breaking ly:minimal-breaking)
    bookTitleMarkup = \markup \abs-fontsize #10 \column {
      \vspace #6
      \fill-line { \fontsize #8 \fromproperty #'header:composer }
      \vspace #1
      \fill-line { \fontsize #4 \fromproperty #'header:composerDate }
      \vspace #6
      \fill-line { \fontsize #10 \bold \fromproperty #'header:title }
      \vspace #1
      \fill-line { \fontsize #1 \bold \fromproperty #'header:subtitle }
      \vspace #1
      \fill-line { \postscript #"-20 0 moveto 40 0 rlineto stroke" }
      \vspace #3
      \fill-line { \fontsize #6 \bold \fromproperty #'header:opus }
      \vspace #3
      \fill-line { \epsfile #X #40 #"ortiz.eps" }
      \vspace #8
      \fill-line { \fromproperty #'header:publisher }
    }
  }
  \markup\null
}

% Table of contents
\bookpart {
  \paper {
    #(define page-breaking ly:minimal-breaking)
    tocTitle = "Tavola del Secondo Libro"
    tocTitleMarkup = \markup \column {
      \vspace #2
      \fontsize #6 \fill-line { \tocTitle }
      \vspace #2
    }
  }
  \markuplist \table-of-contents
}

% Functions
#(define-markup-list-command (paragraph layout props args) (markup-list?)
   #:properties ((par-indent 2))
   (interpret-markup-list layout props
     (make-justified-lines-markup-list (cons (make-hspace-markup par-indent)
                                             args))))
modernSwitch =
#(define-music-function (parser location modClef) (string?)
   (if (eq? #f (ly:get-option 'urtext))
       #{ \clef $modClef #}
       (make-music 'Music 'void #t)))

urtextSwitch =
#(define-music-function (parser location modClef) (string?)
   (if (eq? #f (ly:get-option 'urtext))
       (make-music 'Music 'void #t)
       #{ \clef $modClef #}))

urtextPageBreak =
#(define-music-function (parser location) ()
   (if (eq? #t (ly:get-option 'urtext))
       #{\pageBreak #}
       #{#}))


urtextBreak =
#(define-music-function (parser location) ()
   (if (eq? #t (ly:get-option 'urtext))
       #{\break #}
       #{#}))

urtextNoBreak =
#(define-music-function (parser location) ()
   (if (eq? #t (ly:get-option 'urtext))
       #{\noBreak #}
       #{#}))

modernBreak =
#(define-music-function (parser location) ()
   (if (eq? #t (ly:get-option 'urtext))
       #{#}
       #{\break #}))

modernNoBreak =
#(define-music-function (parser location) ()
   (if (eq? #t (ly:get-option 'urtext))
       #{#}
       #{\noBreak #}))

urtextMeasBreak =
#(define-music-function (parser location) ()
   (if (eq? #t (ly:get-option 'urtext))
       #{\bar "" #}
       #{#}))

modernMeasBreak =
#(define-music-function (parser location) ()
   (if (eq? #t (ly:get-option 'urtext))
       #{#}
       #{\bar "" #}))

modernMeasBreakTurn =
#(define-music-function (parser location) ()
   (if (eq? #t (ly:get-option 'urtext))
       #{#}
       #{\modernMeasBreak \allowPageTurn #}))

% Urtext version has no beams
#(if (eqv? (ly:get-option 'urtext) #t)
     (define bracketOpenSymbol (make-music 'BeamEvent STOP))
     #{#})


% Introduction
\bookpart {
  \paper { #(define page-breaking ly:minimal-breaking) }
  \include "text/intro.ly"
}

% L'Ordine
\bookpart {
  \paper {
    indent = #0
    ragged-last = #(eqv? #t (ly:get-option 'urtext))
  }
  \include "text/ordine.ly"
  \include "lys/bk2_c1_r1.ly"
  \include "lys/bk2_c1_r2.ly"
  \include "lys/bk2_c1_r3.ly"
  \include "lys/bk2_c1_r4.ly"
}

% Seconda maniera
secondaLayout = \layout {
  \context {
    \Staff
    \consists "Custos_engraver" 
    \override Custos #'style = #'mensural
    \override Custos #'neutral-position = #5
  }
}
\include "lys/bk2_c2_r1.ly"
\include "lys/bk2_c2_r2.ly"
\include "lys/bk2_c2_r3.ly"
\include "lys/bk2_c2_r4.ly"
\include "lys/bk2_c2_r5.ly"
\include "lys/bk2_c2_r6.ly"
Aexpose = #(if (eqv? (ly:get-option 'urtext) #t)
               #{ #}
               #{\Aplainsong #})
\bookpart {
  \paper {
    indent = #0
    ragged-last = #(eqv? #t (ly:get-option 'urtext))
  }
  \include "text/seconda.ly"
  
  % On modern version, expose the plainsong
  \score {
    \new Staff \with {
      \override TimeSignature #'style = #'mensural
      \override NoteHead #'style = #'mensural
    }
    \Aexpose
    \layout {\secondaLayout}
  }
  
  % Recercata prima
  \tocItem \markup\italic {"            Recercata prima sopra canto piano"}
  \AAtitle
  \score {
    \AAmusic
    \layout {\secondaLayout}
  }
  
  % Rececata seconda
  \tocItem \markup\italic {"            Recercata seconda sopra il medemo canto piano"}
  \ABtitle
  \score {
    \ABmusic
    \layout {\secondaLayout}
  }
  
  % Recercata terza
  \tocItem \markup\italic {"            Recercata terza sopra il detto canto"}
  \ACtitle
  \score {
    \ACmusic
    \layout {\secondaLayout}
  }
  
  % Recercata quarta
  \tocItem \markup\italic {"            Recercata quarta sopra il detto"}
  \ADtitle
  \score {
    \ADmusic
    \layout {\secondaLayout}
  }
  
  % Recercata quinta
  \tocItem \markup\italic {"            Recercata quinta sopra il detto"}
  \AEtitle
  \score {
    \AEmusic
    \layout {\secondaLayout}
  }
  
  % Recercata sesta
  \tocItem \markup\italic {"            Recercata sesta sopra il detto canto piano"}
  \AFtitle
  \score {
    \AFmusic
    \layout {\secondaLayout}
  }
}

% Terza maniera
\include "lys/ofelici.ly"
\include "lys/ofelici_r1.ly"
\include "lys/ofelici_r2.ly"
\include "lys/ofelici_r3.ly"
\include "lys/ofelici_r4.ly"
\include "lys/doulcememoire.ly"
\include "lys/doulcememoire_r1.ly"
\include "lys/doulcememoire_r2.ly"
\include "lys/doulcememoire_r3.ly"
\include "lys/doulcememoire_r4.ly"
\include "lys/bk2_c3_r1.ly"
\include "lys/bk2_c3_r2.ly"
\bookpart {
  \include "text/terza.ly"
  \pageBreak
  
  % O Felici
  \tocItem \markup\fontsize #1 {"      Un madrigale, o felici occhi miei"}
  \BAtitle
  \score {
    \BAmusic
    \layout{\BAlayout}
  }
  %\pageBreak
  \include "text/felici.ly"
  \pageBreak
  
  \tocItem \markup\italic{"            Recercata prima sopra o felici occhi miei"}
  \BBtitle
  \score {
    \BBmusic
    \layout {\secondaLayout}
  }
  \pageBreak
  
  \tocItem \markup\italic{"            Recercata seconda sopra il detto madrigal"}
  \BCtitle
  \score {
    \BCmusic
    \layout {\secondaLayout}
  }
  \pageBreak
  
  \tocItem \markup\italic{"            Recercata terza sopra il detto madrigal"}
  \BDtitle
  \score {
    \BDmusic
    \layout {\secondaLayout}
  }
  \pageBreak
  
  \tocItem \markup\italic{"            Recercata quarta che e une quinta voce sopra il detto madrigal"}
  \BEtitle
  \score {
    \BEmusic
    \layout {\secondaLayout}
  }
  \pageBreak
  
  \include "text/doulce.ly"
  % Doulce memoire
  \CAtitle
  \score {
    \CAmusic
    \layout{\CAlayout}
  }
  
  \pageBreak
  
  \tocItem \markup\italic{"            Recercata prima sopra doulce memoire"}
  \CBtitle
  \score {
    \CBmusic
    \layout {\secondaLayout}
  }
  \pageBreak
  
  \tocItem \markup\italic{"            Recercata seconda sopra la detta Canzone"}
  \CCtitle
  \score {
    \CCmusic
    \layout {\secondaLayout}
  }
  \pageBreak
  
  \tocItem \markup\italic{"            Recercata terza sopra la detta Canzone"}
  \CDtitle
  \score {
    \CDmusic
    \layout {\secondaLayout}
  }
  \pageBreak
  
  \tocItem \markup\italic{"            Recercata quarta che e' una quinta voce sopra la detta Canzone"}
  \CEtitle
  \score {
    \CEmusic
    \layout {\secondaLayout}
  }
  
  \include "text/tenori.ly"
  
  \pageBreak
  \tocItem \markup\italic{"            Recercata prima sopra li detti tenori"}
  \DAtitle
  \score {
    \DAmusic
    \layout {\secondaLayout}
  }
  
  \pageBreak
  \tocItem \markup\italic{"            Recercata seconda sopra li detti tenori"}
  
%  \include "lys/bk2_c3_r3.ly"
%  \include "lys/bk2_c3_r4.ly"
%  \include "lys/bk2_c3_r5.ly"
%  \include "lys/bk2_c3_r6.ly"
%  \include "lys/bk2_c3_r7.ly"
%  \include "lys/bk2_c3_r8.ly"
%  \include "lys/bk2_c3_r9.ly"
  
  \markup \abs-fontsize #10 \column {
    \vspace #10
    \fill-line { \epsfile #X #40 #"trattado_end.eps" }
  }
}
