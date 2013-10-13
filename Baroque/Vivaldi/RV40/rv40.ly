%%  rv40.ly
%%  This file is part of the Earlilypond project
%% 
%%  Copyright (c) 2012-2013 Benjamin Coudrin <benjamin.coudrin@gmail.com>
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

%\book {
  \header {
    title = "Sonata a violoncello solo"
    subtitle = \markup \center-column { "Sonata n.5 in mi minore "\small \italic "(RV 40)" }
    composer =  \markup \right-column { "Antonio Vivaldi" \small "(1678-1741)" }
    tagline = ""
    copyright = \markup { "Copyright : " \char ##x00A9 " 2012-2013 Benjamin Coudrin. Copyleft : released under cc-by-3.0 License" }
  }

  stdClef = \clef bass
  %stdClef = \clef alto
  altClef = \clef tenor
  %altClef = \clef alto
  %altClef = \clef bass
  %altClef = \clef treble
  
  \score {
    \new StaffGroup <<
      \new Staff <<
        \set Staff.instrumentName = #"Violoncello"
        %\set Staff.instrumentName = #"Viola"
        \set Staff.shortInstrumentName = #""
        \relative c {
        %\relative c' {
          \tempo "Largo"
          \key e \minor
          \time 4/4 
          \altClef
          \partial 8
          \repeat volta 2 {
            e8                                 | 
            e' e e e e\trill dis r b           | % 1
            fis' fis fis fis fis\trill e g b,  | % 2
            b ais r e' d cis16 b ais8 b16 cis  | % 3
            e,4. e'8 ( dis eis fis) b,8        | % 4
            cis4.\trill b8 b4.                         % 5
          }
          \repeat volta 2 {
            fis8                                       |
            b8 b b b b\trill ais r8 fis                | % 6
            cis' cis cis cis cis\trill b fis' (b,)     | % 7
            b8 a e' (a,) a gis16 (a b c d8)            | % 8
            d8 c f f f e~ e16 f d c                    | % 9
            b16 a32 g c16 f d8. c16 c4 r8 e            | % 10
            dis dis dis e16 fis g8 e c4~               | % 11
            c16 a' fis dis b4~ b16 g' e cis a4~        | % 12
            a16 fis' dis b g'4. fis16 e dis8.\trill e16  | % 13
            e2~ e16 e fis g fis8 e                     | % 14
            dis16 cis b8 r a g b16 e fis,8. e16        | % 15
            e16 e' fis cis dis8. e16 e2\fermata          % 16
          }
        }
      >>
      
      \new Staff <<
        \set Staff.instrumentName = #"Basso"
        \set Staff.shortInstrumentName = #""
        \relative c {
          \clef bass
          \key e \minor 
          \time 4/4
          \partial 8
          \repeat volta 2 {
            r8                              |
            r4 r8 b8 b' b b b               | % 1
            b8\trill a r8 a g g g g         | % 2
            fis4 r8 fis b,16 cis d e fis4~  | % 3
            fis8 ais, cis fis b4 ais8 b     | % 4
            fis4 fis, b4.                     % 5
          }
          \repeat volta 2 {
            r8                         |
            r8 r4 b8 fis' fis fis fis  | % 6
            fis8\trill e r8 e d4. d8   | % 7
            c4. d8 e4. e8              | % 8
            a4. a8 g4 f                | % 9
            g8 e16 f g8 g, c c c c     | % 10
            c4 b8 a g4 r8 e'           | % 11
            dis4. d8 cis4. c8          | % 12
            b4 e ais, b                | % 13
            e8 d cis b ais4. ais8      | % 14
            b cis dis b e,4 b'         | % 15
            e8 a b b, e,2\fermata        % 16
          }
        }
      >>
    >>
    
    %\include "settings.ly"
  }
  
  \score {
    \new StaffGroup <<
      \new Staff <<
        \relative c {
        %\relative c' {
          \tempo "Allegro"
          \key e \minor
          \stdClef
          \partial 8
          \repeat volta 2 {
            b8                                            |
            e16 g fis e b' g fis e b8 c' b16 a g fis      | % 17
            e g fis e b' g fis e b8 c' b16 a g fis        | % 18
            g fis e8 r b' gis, d'' e, d'                  | % 19
            c e, a, c' fis,, c'' d, c'                    | % 20
            b d, g, b' fis, a' dis, a'                    | % 21
            g b, e, g' c,, f' a, f'                       | % 22
            dis16 c' b8~ b16 c b8~ b16 a g fis b a g fis  | % 23
            %\allowPageTurn
            g8 e b dis e,4 r8 b'                          | % 24
            e16 g fis e b' g fis e b8 c' b16 a g fis      | % 25
            e g fis e b' g fis e b8 c' b16 a g fis        | % 26
            g8 e r g a16 fis d fis a c b a                | % 27
            b g g, g' b d c b a fis d fis a c b a         | % 28
            b g g, g' b d c b b8\trill a r8 d,            | % 29
            e c'4 g8 fis d'4 b8                           | % 30
            g e'4 c8 a(fis4) g8                           | % 31
            d' (fis,4)  g8 e' (fis,4) g8                  | % 32
            c b16 a b8 a16 g d'8 fis, g c                 | % 33
            b8 a16 g c,8 d g,4.                             % 34
          }
          \repeat volta 2 {
            d'8                                                        | 
            g16 b a g d' b a g d b' a g d' b a g                       | % 35
            fis8 d r e a16 c b a e' c b a                              | % 36
            e c' b a e' c b a gis8 e r e                               | % 37
            f16 (d) fis8 gis16 (e) b'8 c16 (a) c8 d16 (b) d8           | % 38
            e d16 c b a gis fis e8 d16 c b a gis fis                   | % 39
            e8 a' d, e a,4 r8 b                                        | % 40
            e16 g fis e b' g fis e b8 c' b16 (a) g (fis)               | % 41
            e g fis e b' g fis e b8 c' b16 a g fis                     | % 42
            g8 e r b'16 c d b gis fis e d' c b                         | % 43
            c a e c a8 a'16 b c a fis e d c' b a                       | % 44
            b g d b g8 b'~ b16 e b (c) b e b (c)                       | % 45
            a (d) a (b) a (d) a (b) g (c) g (a) g (c) g (a)            | % 46
            fis (b) fis (g) fis (b) fis (g) e (a) e(fis) e (a) e(fis)  | % 47
            dis b e b fis' b, g' b, a'4. g16 fis                       | % 48
            g8 e fis dis e4 r8 b'                                      | % 49
            gis, d'' e, d' c e, a, c'                                  | % 50
            fis,, c'' d, c' b d, g, b'                                 | % 51
            fis, a' dis, a' g b, e, g'                                 | % 52
            c,, f' a, f' dis16 c' b8~ b16 c b8~                        | % 53
            b16 c b8~ b16 a g fis g8 e b dis                           | % 54
            \partial 2 e,2                                               % 55
          }
        }
      >>
      
      \new Staff <<
        \relative c {
          \clef bass
          \key e \minor
          \partial 8
          \repeat volta 2 {
            b8                       |
            e4 e, b' dis             | % 17
            e e, b' dis              | % 18
            e8 fis g e gis,4 e'      | % 19
            a a, fis d'              | % 20
            g g, b dis               | % 21
            e e, a a                 | % 22
            b8 e g b dis, b dis b    | % 23
            e g,16 a b8 b e,4 r8 b'  | % 24
            e4 e, b' dis             | % 25
            e e, b' dis              | % 26
            e8 fis g e d4 fis        | % 27
            g g, fis' d              | % 28
            g g, d'8 c b g           | % 29
            c4 e8 c d4 fis8 d        | % 30
            e4 g8 e d4 d             | % 31
            d d d d                  | % 32
            d d d e8 fis             | % 33
            g8 b, c d g,4.             % 34
          }
          \repeat volta 2 {
            d'8                         |
            g4 g, d' b8 c               | % 35
            d d' gis, e a4 a,           | % 36
            e' c8 d e d c a             | % 37
            d4 e a, b                   | % 38
            c r e r                     | % 39
            e,8 a' d, e a, a' dis, b    | % 40
            e4 e, b' dis                | % 41
            e e, b' dis                 | % 42
            e8 fis g fis e4 gis,        | % 43
            a r d fis,                  | % 44
            g r g'8 g g g               | % 45
            fis fis fis fis e e e e     | % 46
            d d d d c c c c             | % 47
            b b b b b cis dis b         | % 48
            e g, a b e fis g e          | % 49
            gis,4 e' a a,               | % 50
            fis d' g g,                 | % 51
            b dis e e,                  | % 52
            a a b8 e g e                | % 53
            dis8 b dis b e g,16 a b8 b  | % 54
            \partial 2 e,2                % 94
          }
        }
      >>
    >>
    
    %\include "settings.ly"
  }
  
  \score {
    \new StaffGroup <<
      \new Staff <<
        \relative c {
        %\relative c' {
          \tempo "Largo"
          \key e \minor
          \time 12/8 
          \stdClef
          \repeat volta 2 {
            b'8. [d32 (c) b8] b4 b8 e8. [g32 (fis) e8] e4 e8     | % 56
            dis8. [fis32 (e) dis8] dis4 dis8 e8. [d16 c8] b4 a8  | % 57
            g8. [fis16 e8] e4 b'8 c8. [e32 (d) c8] c4 c8         | % 58
            a8. [c32 (b) a8] d4 c8 c4\trill b8 r8 r8 d8          | % 59
            g4 g,8 c8. [b16 a8] g2.                              | % 60
          }
          \repeat volta 2 {
            e8. gis32 (fis) e8 d'4 d8 c8. c,32 (b) a8 a4 a8                       | % 61
            d8. fis32 (e) d8 c'4 c8 b8. b,32 (a) g8 g4 b'8                        | % 62
            e d16 (c) b (a) d8 c16 (b) a (g) c8 b16 (a) g (fis) b8 a16 (g) fis e  | % 63
            b4.~b8. dis'32 (cis) b8 a4. a8. c32 (b) a8                            | % 64
            g4 e'8 g,8. a16 fis8 e2.\fermata                                      | % 65
          }
        }
      >>
      
      \new Staff <<
        \relative c {
          \key e \minor
          \clef bass
          \time 12/8
          \repeat volta 2 {
            e4 e8 e4 e8 g4 g8 g4 e8          | % 56
            b'4 b8 a4 a8 g4 g8 dis4 dis8     | % 57
            e4 e8 e4 e8 a4 a8 a4 a8          | % 58
            fis4 fis8 fis4 fis8 g4 g8 g4 g8  | % 59
            g4 b,8 c4 d8 g,2.                | % 60
          }
          \repeat volta 2 {
            gis4 gis8 gis4 gis8 a4 a8 a4 a8  | % 61
            fis4 fis8 fis4 fis8 g4 g8 g4 g8  | % 62
            c'4 c8 b4 b8 a4 a8 g4 e8         | % 63
            b4 b8 b4 b8 b4 b8 b4 b8          | % 64
            e4 e8 b4 b8 e,2.                 | % 65
          }
        }
      >>
    >>
    
    %\include "settings.ly"
  }
  
  \score {
    \new StaffGroup <<
      \new Staff <<
        \relative c {
        %\relative c' {
          \tempo "Allegro"
          \time 3/8 
          \key e \minor
          \altClef
          \repeat volta 2 {
            e'8 b e                | % 66
            c16 (b) a8 c           | % 67
            b fis b                | % 68
            g fis e                | % 69
            e'16 (fis) g8 e        | % 70
            d fis d                | % 71
            c16 d e8 c             | % 72
            b4.                    | % 73
            b8 c b                 | % 74
            dis16 fis e dis cis b  | % 75
            a8 b a                 | % 76
            dis16 fis e dis cis b  | % 77
            fis'8 g a              | % 78
            g fis e                | % 79
            b c d                  | % 80
            gis,16 b a gis fis e   | % 81
            b'8 c d                | % 82
            gis,16 b a gis fis e   | % 83
            b'8 c d                | % 84
            c b a                  | % 85
            gis16 a b8 a           | % 86
            gis16 a b8 a           | % 87
            gis fis e              | % 88
            d' c b                 | % 89
            e c a                  | % 90
            f' gis,4\trill         | % 91
            a4.                    | % 92
          }
          \repeat volta 2 {
            e'8 b e               | % 93
            g e cis               | % 94
            ais cis fis           | % 95
            d cis b               | % 96
            fis g fis             | % 97
            g' f fis              | % 98
            fis, g fis            | % 99
            fis' dis e            | % 100
            fis, g fis            | % 101
            e' cis d~             | % 102
            d cis b               | % 103
            g' ais,4\trill        | % 104
            b4 r8                 | % 105
            e b e                 | % 106
            c16 b a8 c            | % 107
            b fis b               | % 108
            g fis e               | % 109
            b' e4~                | % 110
            e16 d e d c b         | % 111
            c8 e, a~              | % 112
            a16 g a g fis e       | % 113
            dis8 fis a            | % 114
            c b a                 | % 115
            a4 g8                 | % 116
            \clef bass
            b g e                 | % 117
            c b a                 | % 118
            c' a fis              | % 119
            dis cis b             | % 120
            \clef alto
            dis'16 (e fis8) dis8  | % 121
            a16 (b c8) a8         | % 122
            dis16 (e fis8) dis8   | % 123
            a16 (b c8) a8         | % 124
            g e e'                | % 125
            g, fis4\trill         | % 126
            e4 r8                 | % 127
            a16 (b c8) a8         | % 128
            dis e r               | % 129
            a,16 (b c8) a8        | % 130
            g16 b e b g e'        | % 131
            fis, b dis b fis dis' | % 132
            e4.\fermata           | % 133
          }
        }
      >>
      
      \new Staff <<
        \relative c {
          \clef bass
          \key e \minor
          \time 3/8
          \repeat volta 2 {
            e4.           | % 66
            a4.           | % 67
            dis,4.        | % 68
            e4.           | % 69
            g16 (a) b8 g  | % 70
            fis4.         | % 71
            e16 fis g8 e  | % 72
            dis cis b     | % 73
            b4 r8         | % 74
            b4 r8         | % 75
            b4 r8         | % 76
            b4 r8         | % 77
            b4.           | % 78
            e8 fis g      | % 79
            d4.           | % 80
            e4 r8         | % 81
            gis,4.        | % 82
            e'4.          | % 83
            gis,4.        | % 84
            a4.           | % 85
            e'4 a,8       | % 86
            e'4.          | % 87
            e4.           | % 88
            gis4.         | % 89
            a4 c,8        | % 90
            d e e,        | % 91
            a4.           | % 92
          }
          \repeat volta 2 {
            e'4.            | % 93
            e4.             | % 94
            fis4 ais,8      | % 95
            b4.             | % 96
            fis'8 g fis     | % 97
            b4 ais8         | % 98
            fis g fis       | % 99
            a4 g8           | % 100
            fis g fis       | % 101
            ais,4 b8~       | % 102
            b cis d         | % 103
            e fis fis,      | % 104
            b b'16 a g fis  | % 105
            e4.             | % 106
            a4.             | % 107
            dis,4.          | % 108
            e4.             | % 109
            g4.             | % 110
            gis4.           | % 111
            a4.             | % 112
            c,4.            | % 113
            b4.             | % 114
            a4.             | % 115
            e'4.            | % 116
            g,4.            | % 117
            a4.             | % 118
            a4.             | % 119
            b4.             | % 120
            b4.             | % 121
            b4.             | % 122
            b4.             | % 123
            b4.             | % 124
            e4 g8           | % 125
            r b, b          | % 126
            e, g' e         | % 127
            fis16 g a8 fis  | % 128
            b16 a g8 r      | % 129
            fis16 g a8 fis  | % 130
            e4.             | % 131
            b'4 b,8         | % 132
            e,4.\fermata    | % 133                        
          }
        }
      >>
    >>
    
    %\include "settings.ly"
  }
  
%}
