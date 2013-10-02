%% polipheme.ly
%% Louis Nicolas Clérambault
%% Premier livre de cantates, n°4
%% Poliphème
%% Author : Benjamin Coudrin, 2013

\version "2.16.0"

\header {
  tagline = ""
  composer = "Louis Nicolas Clérambault"
    composerDate = "1676-1749"
    date = "1710"
    title = "Poliphème"
    subtitle = "Premier livre de cantates, N.4"
    publisher = \markup { "Copyright : " \char ##x00A9 " 2013 Earlilypond, Benjamin Coudrin" }
}

#(set-default-paper-size "a4")
#(set-global-staff-size 15)

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
