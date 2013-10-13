%%  twv52a1.ly
%%  This file is part of the Earlilypond project
%%  
%%  Copyright (c) 2012 Benjamin Coudrin <benjamin.coudrin@gmail.com>
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
  line-width    = 190\mm
  left-margin   = 10\mm
  top-margin    = 10\mm
  bottom-margin = 20\mm
  ragged-last-bottom = ##t 
  ragged-bottom = ##f
  annotate-spacing = ##f
  #(define page-breaking ly:page-turn-breaking)
}

\book {
  \header {
    title = "Concerto for Recorder and Viola da Gamba"
    subtitle = \markup \center-column { "in A minor"\small \italic "(TWV 52:a1)" }
    composer =  \markup \right-column { "Georg Philip Telemann" \small "(1681-1767)" }
    tagline = ""
    copyright = \markup { "Copyright : " \char ##x00A9 " 2012 Benjamin Coudrin. Copyleft : released under WTFPL v2.0 License" }
  }
  
  \include "grave.ly"
  \include "allegro.ly"
  \include "dolce.ly"
  \include "allegro2.ly"
  
}
