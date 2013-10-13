%%  lecon3.ly
%%  This file is part of the Earlilypond project
%%
%%  Copyright (c) 2013 Benjamin Coudrin <benjamin.coudrin@gmail.com>
%%                All Rights Reserved
%%
%%  This program is free software. It comes without any warranty, to
%%  the extent permitted by applicable law. You can redistribute it
%%  and/or modify it under the terms of the Do What The Fuck You Want
%%  To Public License, Version 2, as published by Sam Hocevar. See
%%  http://sam.zoy.org/wtfpl/COPYING for more details.

\version "2.14.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\paper {
  line-width    = 188\mm
  left-margin   = 10\mm
  top-margin    = 10\mm
  bottom-margin = 20\mm
  ragged-last-bottom = ##t 
  ragged-bottom = ##f
  annotate-spacing = ##f
  page-breaking = #ly:page-turn-breaking
  #(define page-breaking ly:page-turn-breaking)
}

\layout {
  \context {
    \RemoveEmptyStaffContext
  }
}

\header {
  title = \markup \center-column { "Pour le Mercredy" "Troisième Leçon à deux Voix" }
  %subtitle =
  composer =  \markup \right-column { "François Couperin" \small "(1668-1733)" }
  tagline = ""
  copyright = \markup { "Copyright : " \char ##x00A9 " 2013 Benjamin Coudrin. Copyleft : released under WTFPL License" }
}

\include "../../../3rdParty/Viole/ornements-viole.ly"
\include "jod.ly"
\include "recitatif1.ly"
\include "recitatif2.ly"
\include "ovos.ly"
\include "mem.ly"
\include "recitatif3.ly"
\include "jerusalem.ly"

petittePause = {
  \textLengthOn
  \bar "|."
  s1_\markup{\italic{\center-column{Petitte pause}}}
  \bar ".|"
  \textLengthOff
}

\score {
  \new StaffGroup  <<
    \new Voice = "sopun" <<
      #(set-accidental-style 'forget)
      \set Staff.instrumentName = #""
      \set Staff.shortInstrumentName = #""
      \relative c'' {
        \key d \major
        \override Staff.TimeSignature #'style = #'single-digit
        \time 2/2
        \clef treble
        \jodsopun
        \petittePause
        \override Staff.TimeSignature #'style = #'default
        \time 2/2
        \recunsopun
        s1
        \recdeuxsopun
        \petittePause
        \allowPageTurn
        \ovossopun
        \petittePause
        \memsopun
        \bar "||"
        \rectroissopun
        \petittePause
        \jerusopun
        \bar "|."
      }
    >>
    
    \new Lyrics \lyricsto sopun {
        \jodlyrun
        \recunlyrun
        \recdeuxlyrun
        \ovoslyrun
        \memlyrun
        \rectroislyrun
        \jerulyrun
    }
    
    \new Voice = "sopdeux" <<
      #(set-accidental-style 'forget)
      \set Staff.instrumentName = #""
      \set Staff.shortInstrumentName = #""
      \relative c'' {
        \key d \major
        \override Staff.TimeSignature #'style = #'single-digit
        \time 2/2
        \clef treble
        \jodsopdeux
        s1
        \override Staff.TimeSignature #'style = #'default
        \recunsopdeux
        \petittePause
        \recdeuxsopdeux
        s1
        \ovossopdeux
        s1
        \memsopdeux
        \rectroissopdeux
        s1
        \jerusopdeux
      }
    >>
    
    \new Lyrics \lyricsto sopdeux {
        \jodlyrdeux
        \recunlyrdeux
        \recdeuxlyrdeux
        \ovoslyrdeux
        \memlyrdeux
        \rectroislyrdeux
        \jerulyrdeux
    }

    \new Staff <<
      #(set-accidental-style 'forget)
      \set Staff.instrumentName = #""
      \set Staff.shortInstrumentName = #""
      
      \figuremode {
        \jodfig
        s1
        \recunfig
        s1
        \recdeuxfig
        s1
        \ovosfig
        s1
        \memfig
        \rectroisfig
        s1
        \jerufig
      }
      
      \relative c' {
        \clef bass
        \key d \major 
        \override Staff.TimeSignature #'style = #'single-digit
        \time 2/2
        \jodbass
        s1
        \override Staff.TimeSignature #'style = #'default
        \recunbass
        s1
        \recdeuxbass
        s1
        \ovosbass
        s1
        \membass
        \rectroisbass
        s1
        \jerubass
      }
    >>
 >>
}