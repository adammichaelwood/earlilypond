%% libro2.ly
%% Trattado de Glosas, Diego Ortiz
%% Author : Benjamin Coudrin, 2013

\version "2.16.0"

\header {
  tagline = ""
}

#(set-default-paper-size "a4")

\layout {
  \context {
    \Score
    \override SpacingSpanner #'uniform-stretching = ##t
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

% Introduction
\bookpart {
  \paper { #(define page-breaking ly:minimal-breaking) }
  \include "text/intro.ly"
}

% L'Ordine
\bookpart {
  \paper { indent = #0 }
  \include "text/ordine.ly"
  \include "lys/bk2_c1_r1.ly"
  \include "lys/bk2_c1_r2.ly"
  \include "lys/bk2_c1_r3.ly"
  \include "lys/bk2_c1_r4.ly"
}

% Seconda maniera
\bookpart {
  \paper { indent = #0 }
  \include "text/seconda.ly"
  \include "lys/bk2_c2_r1.ly"
  \include "lys/bk2_c2_r2.ly"
  \include "lys/bk2_c2_r3.ly"
  \include "lys/bk2_c2_r4.ly"
  \include "lys/bk2_c2_r5.ly"
  \include "lys/bk2_c2_r6.ly"
}

% Terza maniera
\bookpart {
  %\paper { indent = #0 }
  \include "text/terza.ly"
  \include "lys/ofelici.ly"
  \include "text/felici.ly"
  \include "lys/ofelici_r1.ly"
  \include "lys/ofelici_r2.ly"
  \include "lys/ofelici_r3.ly"
  \include "lys/ofelici_r4.ly"
  \include "text/doulce.ly"
  \include "lys/doulcememoire.ly"
  \include "lys/doulcememoire_r1.ly"
  \include "lys/doulcememoire_r2.ly"
  \include "lys/doulcememoire_r3.ly"
  \include "lys/doulcememoire_r4.ly"
  %\include "text/tenori.ly"
  %\include "lys/bk2_c3_r1.ly"
  %\include "lys/bk2_c3_r2.ly"
  %\include "lys/bk2_c3_r3.ly"
  %\include "lys/bk2_c3_r4.ly"
  %\include "lys/bk2_c3_r5.ly"
  %\include "lys/bk2_c3_r6.ly"
  %\include "lys/bk2_c3_r7.ly"
  %\include "lys/bk2_c3_r8.ly"
  %\include "lys/bk2_c3_r9.ly"
}