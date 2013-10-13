%%  la_couperin.ly
%%  This file is part of the Earlilypond project
%%  Copyright (c) 2013 Benjamin Coudrin <benjamin.coudrin@gmail.com>
%%                All Rights Reserved
%%
%%  This program is free software. It comes without any warranty, to
%%  the extent permitted by applicable law. You can redistribute it
%%  and/or modify it under the terms of the Do What The Fuck You Want
%%  To Public License, Version 2, as published by Sam Hocevar. See
%%  http://sam.zoy.org/wtfpl/COPYING for more details.

\version "2.14.2"

\include "../../../3rdParty/Viole/ornements-viole.ly"

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

%\book {
  \header {
    title = "Allemande La La Borde"
    composer =  \markup \right-column { "A. Forqueray" \small "(1672-1745)" }
    tagline = ""
    copyright = \markup { "Copyright : " \char ##x00A9 " 2013 Benjamin Coudrin. Copyleft : released under cc-by-3.0 License" }
  }
  
  \layout {
    \context {
      \Voice
      \consists "Horizontal_bracket_engraver"
      %\consists "Custos_engraver"
      \override HorizontalBracket #'bracket-flare = #'(0.0 . 0.0)
    }
  }

  \score {
    \new StaffGroup <<
      \new Staff <<
        \override Staff.Custos #'neutral-position = #4
        \override Staff.Custos #'style = #'mensural
        #(set-accidental-style 'forget)
        \relative c' {
          \override Fingering #'staff-padding = #'()
          \tempo "Noblement et avec sentiment"
          \key a \minor
          \time 4/4 
          \clef alto
          \repeat volta 2 {
            \partial 16 d16 |
            <d, f a d>4 r16 d'16(e f) d8_0 [a_0] f_1 [\vsmordant d_2] | % 1
            \clef bass \vleftfinger <f,-3>8 [\clef alto d''] a'8.^+ [a,16] << {\voiceOne \grace a8 (bes4)} \\ {g4} >> g'8._\markup{\bold \italic t}^+ [b,16_\markup{\bold \italic t}] | % 2
            <<{\grace b8 (cis8-\tweak #'Y-offset #1.3 -\tweak #'X-offset #0.4 -+) [b16 (a)] d8 [a] g [f]} \\ {a4 r8 f8 e [d]}>> \clef bass <<{e8 [a]}\\{a,4}>> | % 3
            <<{d4 \stemDown d'8.^+_\markup{\bold \italic t} [d,16_\markup{\bold \italic t}] \stemUp \grace d8 (e4-\tweak #'Y-offset #1.7 -\tweak #'X-offset #0.5 -+)}\\{bes4-\tweak #'Y-offset #-2.3 -\tweak #'X-offset #-0.6 -+ s4 c4}>> c'8.^+_\markup{\bold \italic t} [e,16_\markup{\bold \italic t}] | % 4
            <<{\grace e8 (\once \override Stem #'direction = #UP f4-\tweak #'Y-offset #2.5 -\tweak #'X-offset #0.4 -+) \once \override Stem #'direction = #UP \once \override HorizontalBracket #'direction = #UP f-\tweak #'Y-offset #2.3 -\tweak #'X-offset #-0.6 -4\startGroup \once \override Stem #'direction = #UP f c,8 [\vtrembl e'16\stopGroup (d32 e)]}\\{d8 [c] bes [a] g [f] s4}>> | % 5
            f'8-\tweak #'Y-offset #2.3 -\tweak #'X-offset #-0.6 -4 [f,] <<{a'8-\tweak #'Y-offset #3.5 -\tweak #'X-offset #0.4 -+^\markup{\fontsize #-3 \sharp} [a] a [b16 (a)] \vtrembl gis8-\tweak #'Y-offset #2.8 -\tweak #'X-offset #0 -3 [fis16 (gis)]}\\{r8 c, d4 e-\tweak #'Y-offset #-1 -\tweak #'X-offset #-1 -2}>> | % 6
            a8^+ [a,] \clef alto <<{\vsmordant c'4 c8 [d16 (c)] \vtrembl b8 [a16 (b)]}\\{e,8 [c] \vsmordant f4 g}>> | % 7
            \vleftfinger <c^+-3>8 [c,] e'8.^+ [e,16] <<{\grace e8 (\vsmordant f4)}\\{d4}>> d'8.-\tweak #'Y-offset #1.5 -\tweak #'X-offset #0.4 -+^\markup{\fontsize #-3 \sharp}_\markup{\bold \italic t} [fis,16_\markup{\bold \italic t}] | % 8
            <<{\slurDown \grace fis8 (gis8-\tweak #'Y-offset #-0.5 -\tweak #'X-offset #0.5 -+-\tweak #'Y-offset #0.7 -\tweak #'X-offset #0 -4) [\grace fis8 (e8)]}\\{e4-\tweak #'Y-offset #-4.5 -\tweak #'X-offset #0.4 -3}>> \corde #2 e'8-1 [\corde #2 fis-1] <<{\corde #2 \vtrembl gis8.-3 ([fis32 g]) \once \override NoteColumn #'X-offset = #1 \corde #2 \vplaintevert a4-4}\\{e,2}>> | % 9
            <<{\corde #2 e'4-1 fis8._1 ([gis32 a]) \vtrembl gis8. ([\once \override NoteColumn #'X-offset = #1 fis32 gis]) \once \override NoteColumn #'X-offset = #1 \vplaintevert a4}\\{e,2 e2}>> | % 10
            <<{\corde #2 e'8-1 e4-1 r8 r8 e4 r8}\\{\slurUp e,8 [\vleftfinger <c'-2> (\vtrembl b) \vleftfinger <a-4>] gis [c (\vtrembl b) \vleftfinger <a-4>]}>> | % 11
            <<{r8 e'4 r8 e4 r8 d8}\\{\slurUp e,8 [c' (\vtrembl b) \vleftfinger <a-4>] gis [\vleftfinger <e-0> (fis-\tweak #'Y-offset #-0.7 -\tweak #'X-offset #0.5 -+) g]}>> | % 12
            \clef alto <<{c [b] \vleftfinger <a-4>4}\\{\vleftfinger <a-4>4. (\vleftfinger <g-2>8)}>> \clef bass <<{a2}\\{\slurUp \vleftfinger <f-1>8 ([e]) \vtrembl d [c]}>> | % 13
            b8 [<gis' d'>] a, [<a' c>] <d, a' b>4 <<{\slurDown \vtrembl b'8. ([a32 b])}\\{e,4}>> | % 14
            <<{c'8 [b] \vleftfinger a4 a2}\\{\vleftfinger <a-4>4. (\vleftfinger <g-2>8) \slurUp \vleftfinger <f-1>8 ([e]) \vtrembl d [c]}>> | % 15
            b8 [<gis' d'>] a, [<a' c>] <d, a' b>4 <<{\slurDown \vtrembl b'8. ([a32 b])}\\{e,4}>> | % 15
          }
          \alternative {
            {a8. cis32-1 ([d e]) a,8.-0 cis,32 ([d e]) <a, cis e a> 4. s16}
            {a'8 [a,] a,8. [e''16-3] <<{\grace e8 (f4-4-+)}\\{\vleftfinger <a,-1>4}>> \vtrembl f'8.-1 ([d16])}
          }
        }
      >>
      
      \new FiguredBass \figuremode {
          \set figuredBassAlterationDirection = #LEFT
          \set figuredBassPlusDirection = #LEFT
          \override VerticalAxisGroup #'minimum-Y-extent = #'()
          \override BassFigureAlignment #'stacking-dir = #UP
          \override FiguredBass.BassFigure #'font-size = #-2
          \repeat volta 2 {
            \partial 16 s16 |
            s1 | % 1
            <6>2 <7 9>4. <7>8 | % 2
            <5/+>2 <6\\>4 <4>8 <_+>8 | % 3
            s4. <7>8 <7>4. <7>8 | % 4
            <7>2 <7>4. <7->8 | % 5
            s4. <6>8 <5 6>8 <5/>8 <_+>4 | % 6
            s4. <6>8 <5 6>8 s4. | % 7
            s4. <7>8 s4. <5+ 7>8 | % 8
            \bassFigureExtendersOn <_+>4  <_+>8 <_+>8 <_+>8 \bassFigureExtendersOff s8 <4 6>4 | % 9
            <_+>4 <5/>4 <_+>4 <4 6>4 | % 10
            <_+>4 <5/>4 <_+>4 <5/>4 | % 11
            <_+>4 <5/>4 <_+>2 | % 12
            s4 <7>8 <_+>8 s4 <6\\>8 <4 6>8 | % 13
            <3 4/>8 <5/ 6>8 <6>4 <5 6>4 <4>8 <_+>8 | % 14
            s4. <_+ 7>8 s4 <6\\>8 <4 6>8 | % 15
            <3 4/>8 <5/ 6>8 <6>4 <5 6>4 <4>8 <_+>8 | % 16
          } 
          \alternative {
            {<_+>4 s2.}
            {s4 <_+>4 <6>4 s4}
          }
        }
      
      \new Staff <<
        \override Staff.Custos #'neutral-position = #4
        \override Staff.Custos #'style = #'mensural
        #(set-accidental-style 'forget)
        \relative c {
          \clef bass
          \key a \minor 
          \time 4/4
          \repeat volta 2 {
            \partial 16 r16 |
            d8 [a] f [d] d2 | % 1
            f4. d8 g4. ees8 | % 2
            f4. d8 bes'8 [\vtrembl g] a [a,] | % 3
            bes'4. g8 c4. a8 | % 4
            d8 [a] bes [f] \vtrembl g [f] c [c'] | % 5
            f,4 r8 c'8 d [dis] e [e,] | % 6
            a4 r8 e' f [d] g [g,] | % 7
            c8 c,4 a'8 d d,4 b'8 | % 8
            e,4 r <<{e'2 ~}\\{\stemUp e,2 ~}>> | % 9
            <<{e'4 dis e2 ~}\\{\stemUp e,2 e2}>> | % 10
            <<{\oneVoice e'8 [a gis a] e [a gis a]}\\{s1}>> | % 11
            e8 [ a gis a] e [ e fis gis] | % 12
            a4 a,8 [a,] d [e] f [e] | % 13
            d8 [b] c [a] d [f] e [e'] | % 14
            a,4. a8 d, [e] f [e] | % 15
            d8 [b] c [a] d [f] e [e'] | % 14
          }
          \alternative {
            {a,4 (a4 ~ a8 [g \vtrembl f e])}
            {a4 <a, a'>2 a'4}
          }
        }
      >>
    >>
  }
  
%}
