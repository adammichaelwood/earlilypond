%% libro2.ly
%% Trattado de Glosas, Diego Ortiz
%% Author : Benjamin Coudrin, 2013

\version "2.16.0"

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
    tagline = ""
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
act =
#(define-music-function (parser location act-title) (string?)
  (increase-rehearsal-major-number)
  (add-page-break parser)
  (add-toc-item parser 'tocActMarkup act-title)
  (add-even-page-header-text parser (string-upper-case (*opus-title*)) #f)
  (*act-title* act-title)
  (add-odd-page-header-text
    parser
    (format #f "~a" (string-upper-case (*act-title*)))
    #f)
  (add-toplevel-markup parser
    (markup #:act (string-upper-case act-title)))
  (add-no-page-break parser)
  (make-music 'Music 'void #t))

#(define-markup-list-command (paragraph layout props args) (markup-list?)
   (let ((indent (chain-assoc-get 'par-indent props 2)))
     (interpret-markup-list layout props
       (make-justified-lines-markup-list (cons (make-hspace-markup indent)
                                               args)))))

% Music
\include "page050.ly"