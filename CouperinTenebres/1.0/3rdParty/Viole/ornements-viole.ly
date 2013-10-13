\version "2.14.2"

%%%%%%%%%%%% Fonction pour les doigtés avec corde
#(define (fingering::calc-dot-text grob nb-pts)
  (let*
  		((event (event-cause grob))
			(digit (ly:event-property event 'digit))
			(nb-up 0)
	 		(nb-down 0))

	  (if (> digit 5)
		  (ly:input-message (ly:event-property event 'origin)
				  "Warning: Fingering notation for finger number ~a"
				  digit))

	  (cond
	      ((= nb-pts 4) (set! nb-up 2) (set! nb-down 2))
	      ((= nb-pts 5) (set! nb-up 2) (set! nb-down 3))
	      ((= nb-pts 6) (set! nb-up 3) (set! nb-down 3))
	      ((= nb-pts 7) (set! nb-up 3) (set! nb-down 4)))
  
		(if (< nb-pts 4)
		  (markup #:override '(baseline-skip . 1.6) 
				#:center-column (
					#:line (#:pattern nb-pts X 0.2 #:musicglyph "dots.dot")
		      			(number->string digit 10)))
	    (markup 
	    		#:override '(baseline-skip . 2) 
					#:center-column (
	    				#:line (
							#:override '(baseline-skip . 0.4) #:center-column(
								#:line (#:pattern nb-up X 0.2 #:musicglyph "dots.dot")
								#:line (#:pattern nb-down X 0.2 #:musicglyph "dots.dot")))
	      			(number->string digit 10)))
		)))

corde =
	#(define-music-function (parser location nb-pts)
	 	(integer?)
		#{
			\once \override Staff.Fingering #'text = 
				#(lambda (grob) (fingering::calc-dot-text grob $nb-pts))
		#})

%%%%%%%%%%%% Fonction pour les barrés
#(define (fingering::calc-barres-text grob)
  (let*
  		((event (event-cause grob))
			(digit (ly:event-property event 'digit)))

	  (if (> digit 5)
		  (ly:input-message (ly:event-property event 'origin)
				  "Warning: Fingering notation for finger number ~a"
				  digit))
  
    (markup 
			#:line (
				#:raise 0.5 #:musicglyph "dots.dot"
      		#:halign -0.1 (number->string digit 10)
				#:halign 2.1 #:raise 0.5 #:musicglyph "dots.dot"))
))

barre =
{
	\once \override Staff.Fingering #'text =
		#(lambda (grob) (fingering::calc-barres-text grob))
}

%%%%%%%%%%%% Fonction Scheme pour les ornements
#(define (add-vdg-ornament music rotation size glyph-name)
 (if
  (equal? (ly:music-property music 'name) 'NoteEvent)
    (set! (ly:music-property music 'articulations)
          (append (ly:music-property music 'articulations)
                  (list
                   (let ((obj (make-music 'FingeringEvent)))
                     (set! (ly:music-property obj 'tweaks)
                           (acons 'X-extent (lambda (grob)
                             (ly:stencil-extent
                               (grob-interpret-markup grob
                                 glyph-name)
                               X))
                           (acons 'stencil (lambda (grob)
                              (grob-interpret-markup grob
                                (markup
                                  #:rotate rotation
                                  #:fontsize size
                                  glyph-name)))
                              (ly:music-property obj 'tweaks))))
                     obj))))
  music))


%%%%%%%%%%%% Définition des ornements
vmordant =
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
        $(add-vdg-ornament music 45 4 
        		(markup #:musicglyph "scripts.stopped")) 
        $music #}) 

vxmordant =
	#(define-music-function (parser location music) (ly:music?) 
     #{ \once \set fingeringOrientations = #'(up) 
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
        $(add-vdg-ornament music 45 4 
        		(markup #:musicglyph "scripts.stopped")) 
        $music #}) 

vxdmordant =
	#(define-music-function (parser location music) (ly:music?) 
     #{ \once \set fingeringOrientations = #'(down) 
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
        $(add-vdg-ornament music 45 4 
        		(markup #:musicglyph "scripts.stopped")) 
        $music #}) 
        
vpmordant =
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
       
vsmordant =
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
						     0.5)))
        $(add-vdg-ornament music 0 4 
        		(markup #:musicglyph "scripts.stopped")) 
        $music #})
        
varpeg = 
	#(define-music-function (parser location music) (ly:music?) 
     #{ \once \set fingeringOrientations = #'(left) 
        \once \override Fingering #'padding = #0.5
        \once \override Fingering #'Y-offset = 
        		#-1.1
        $(add-vdg-ornament music -25 6 
        		(markup #:musicglyph "scripts.lvarcomma"))
        $music #}) 

vtrembl = 
	#(define-music-function (parser location music) (ly:music?) 
     #{ \once \set fingeringOrientations = #'(right) 
        \once \override Fingering #'padding = #0.4
        $(add-vdg-ornament music 0 2
        		(markup #:musicglyph "scripts.rcomma"))
        $music #}) 

vplaintevert =
	#(define-music-function (parser location music) (ly:music?) 
     #{ \once \set fingeringOrientations = #'(left) 
        \once \override Fingering #'padding = #0.5
        \once \override Fingering #'Y-offset =  #-0.5
        $(add-vdg-ornament music 0 1 
        		(markup #:pattern 3 Y 0 #:musicglyph "scripts.arpeggio"))
        $music #}) 
        
vplaintehoriz =
	#(define-music-function (parser location music) (ly:music?) 
	     #{ \once \set fingeringOrientations = #'(up) 
	        \once \override Fingering #'padding = #.75
	        \once \override Fingering #'X-offset = #0.5
	        $(add-vdg-ornament music 0 1 
	        		(markup #:pattern 3 X 0 #:musicglyph "scripts.trill_element")) 					$music #}) 
        
vleftfinger =
      #(define-music-function (parser location music) (ly:music?) 
	     #{ \once \set fingeringOrientations = #'(left)
                $music
             #}) 
      