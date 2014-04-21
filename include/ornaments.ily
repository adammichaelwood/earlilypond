%%  format.ily
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

% French viol notation
\include "../3rdParty/Viole/ornements-viole.ly"

% Vocal ornaments
vcoul =
#(define-music-function (parser location music) (ly:music?) 
   #{ \once \set fingeringOrientations = #'(left) 
      \once \override Fingering #'padding = #0.2
      \once \override Fingering #'Y-offset =
      #(lambda (grob)
         (let 
          ((s-pos (ly:grob-staff-position grob)))
          (if
           (and 
            (= (modulo s-pos 2) 0) 
            (< s-pos 3) 
            (> s-pos -3))
           0.5
           0)))
      $(add-vdg-ornament music 0 4 
         (markup #:musicglyph "scripts.umarcato")) 
      $music #}) 

vmartel =
#(define-music-function (parser location music) (ly:music?) 
   #{ \once \set fingeringOrientations = #'(left) 
      \once \override Fingering #'padding = #0.2
      \once \override Fingering #'Y-offset =
      #(lambda (grob)
         (let 
          ((s-pos (ly:grob-staff-position grob)))
          (if
           (and 
            (= (modulo s-pos 2) 0) 
            (< s-pos 3) 
            (> s-pos -3))
           0.5
           0)))
      $(add-vdg-ornament music 0 4 
         (markup #:musicglyph "scripts.dmarcato")) 
      $music #})

vscoul =
#(define-music-function (parser location music) (ly:music?) 
   #{ \once \set fingeringOrientations = #'(left) 
      \once \override Fingering #'padding = #0.2
      \once \override Fingering #'Y-offset =
      #(lambda (grob)
         (let 
          ((s-pos (ly:grob-staff-position grob)))
          (if
           (and 
            (= (modulo s-pos 2) 0) 
            (< s-pos 3) 
            (> s-pos -3))
           0.5
           0)))
      $(add-vdg-ornament music 0 4 
         (markup #:musicglyph "scripts.umarcato"))
      $music #})

vsmartel =
#(define-music-function (parser location music) (ly:music?) 
   #{ \once \set fingeringOrientations = #'(left) 
      \once \override Fingering #'padding = #0.2
      \once \override Fingering #'Y-offset =
      #(lambda (grob)
         (let 
          ((s-pos (ly:grob-staff-position grob)))
          (if
           (and 
            (= (modulo s-pos 2) 0) 
            (< s-pos 3) 
            (> s-pos -3))
           0.5
           0)))
      $(add-vdg-ornament music 0 4 
         (markup #:musicglyph "scripts.dmarcato"))
      $music #})

vflat =
	#(define-music-function (parser location music) (ly:music?) 
     #{ \once \set fingeringOrientations = #'(left) 
        \once \override Fingering #'padding = #0.2
        \once \override Fingering #'Y-offset =
        		#(lambda (grob)
					   (let 
						   ((s-pos (ly:grob-staff-position grob)))
						   (if
						     (and 
						       (= (modulo s-pos 2) 0) 
						       (< s-pos 3) 
						       (> s-pos -3))
						     0.5
						     0)))
        $(add-vdg-ornament music 0 4 
        		(markup #:musicglyph "scripts.stopped")) 
        $music #})
        
vferm =
	#(define-music-function (parser location music) (ly:music?) 
     #{ \once \set fingeringOrientations = #'(left) 
        \once \override Fingering #'padding = #0.2
        \once \override Fingering #'Y-offset =
        		#(lambda (grob)
					   (let 
						   ((s-pos (ly:grob-staff-position grob)))
						   (if
						     (and 
						       (= (modulo s-pos 2) 0) 
						       (< s-pos 3) 
						       (> s-pos -3))
						     0.5
						     0)))
        $(add-vdg-ornament music -90 4 
        		(markup #:musicglyph "accidentals.leftparen")) 
        $music #})