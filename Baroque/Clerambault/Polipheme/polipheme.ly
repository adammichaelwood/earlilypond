%% polipheme.ly
%% Louis Nicolas Clérambault
%% Premier livre de cantates, n°4
%% Poliphème
%% Author : Benjamin Coudrin, 2013

\version "2.16.0"

\header {
  tagline = \markup { "Copyright : " \char ##x00A9 " 2013 Earlilypond, Benjamin Coudrin" }
  composer = "Louis Nicolas Clérambault"
  composerDate = "1676-1749"
  date = "1710"
  title = "POLIPHÊME"
  subtitle = \markup \center-column { \concat { "Cantate IV" \override #'(baseline-skip . 2) \super e} \small "a voix seule, et simphonie"}
  source = \markup \left-column {
    "Sources : "
    "[1] Cantates Françoises a I et II voix, avec simphonie et sans simphonie composées par Mr Clerambault, organiste et Maitre de clavecin. Livre Premier. "
    \with-url #"http://catalogue.bnf.fr/ark:/12148/cb39782645k/PUBLIC" {"http://catalogue.bnf.fr/ark:/12148/cb39782645k/PUBLIC"}
    "[2] Recueil de cantates à une ou deux voix avec un ou deux dessus et basse de différents auteurs (extrait)"
    \with-url #"http://bibliotheque.versailles.fr/cgi-bin/abnetclop.exe/O7105/ID73f95892/NT4" {"http://bibliotheque.versailles.fr/cgi-bin/abnetclop.exe/O7105/ID73f95892/NT4"}
  }
}

#(set-default-paper-size "a4")
#(set-global-staff-size 15)

\paper {
  #(define page-breaking ly:minimal-breaking)
  bookTitleMarkup = \markup \abs-fontsize #6 \column {
    \vspace #1
    \fill-line { \fontsize #8 \fromproperty #'header:composer }
    \vspace #1
    \fill-line { \fontsize #4 \fromproperty #'header:composerDate }
    \vspace #4
    \fill-line { \fontsize #10 \bold \fromproperty #'header:title }
    \vspace #1
    \fill-line { \fontsize #2 \bold \fromproperty #'header:subtitle }
    \vspace #1
    \fill-line { \postscript #"-20 0 moveto 40 0 rlineto stroke" }
    \vspace #6
    \fill-line { \fontsize #-1 \bold \fromproperty #'header:source }
    \vspace #6
  }
}
\markup\null

\layout {
  \context {
    \Score
    \override SpacingSpanner #'uniform-stretching = ##t
    \override Stem #'neutral-direction = #1
  }
  \context {
    \Voice
    \override TupletNumber #'stencil = ##f 
    \override TupletBracket #'bracket-visibility = ##f 
  }
  \context {
    \RemoveEmptyStaffContext
    \override VerticalAxisGroup #'remove-first = ##t 
  }
}

\include "../../../3rdParty/Viole/ornements-viole.ly"
\include "../../../include/mensuration.ly"

%% Premier Recitatif
\include "recitatif1.ly"
\score {
  \new StaffGroup  <<
    \new Voice = "baryton" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \Abaryton >>
    \new Lyrics \lyricsto baryton { \Alyrbar }
    \new Staff <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \figuremode { \Abassefig }
      \Abasse
    >>
  >>
}


%% Air fort tendre
\include "airforttendre.ly"
\score {
  \new StaffGroup  <<
    \new Voice = "dessus" <<\override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \Bdessus >>
    \new Voice = "baryton" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \Bbaryton >>
    \new Lyrics \lyricsto baryton { \Blyrbar }
    \new Staff <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \figuremode { \Bbassefig }
      \Bbasse
    >>
  >>
  
  \header {
    piece = "Air fort tendre"
  }
}

%% Second Récit
\include "recitatif2.ly"
\score {
  \new StaffGroup  <<
    \new Voice = "baryton" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \Cbaryton >>
    \new Lyrics \lyricsto baryton { \Clyrbar }
    \new Staff <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \figuremode { \Cbassefig }
      \Cbasse
    >>
  >>
}

%% Vengez moy
\include "vengezmoy.ly"
\score {
  \new StaffGroup  <<
    \new Voice = "dessus" <<\override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \Ddessus >>
    \new Voice = "baryton" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \Dbaryton >>
    \new Lyrics \lyricsto baryton { \Dlyrbar }
    \new Staff <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \figuremode { \Dbassefig }
      \Dbasse
    >>
  >>
}

%% Troisieme Récit
\include "recitatif3.ly"
\score {
  \new StaffGroup  <<
    \new Voice = "baryton" << \override Staff.BarLine #'allow-span-bar = ##f #(set-accidental-style 'forget) \Ebaryton >>
    \new Lyrics \lyricsto baryton { \Elyrbar }
    \new Staff <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \figuremode { \Ebassefig }
      \Ebasse
    >>
  >>
}