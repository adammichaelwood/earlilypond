\version "2.12.3"

#(set-global-staff-size 15)
\paper { indent = #0 }
\layout {
	\context {
		\Score
		\override SpacingSpanner #'uniform-stretching = ##t
		%\remove Bar_engraver
		\override BarLine #'transparent = ##t
		\remove "System_start_delimiter_engraver"
                \override TimeSignature #'style = #'mensural
    }
}

%#(set-global-staff-size 16)
\score {
  \new StaffGroup = choirStaff <<
    \new Voice  = "cantusNotes"  <<
      #(set-accidental-style 'forget)
      \set Score.skipBars = ##t
      \revert Score.SpacingSpanner #'spacing-increment % CHECK: no effect?
      \cadenzaOff % turn bar lines on again
      \once \override Staff.Clef #'full-size-change = ##t
      \set Staff.forceClef = ##t
      \key d \minor
      \time 2/2
      \override Voice.NoteHead #'style = #'default
      \override Voice.Rest #'style = #'default
      \relative c'' {
        \set Staff.instrumentName = #"Cantus"
        \clef soprano
        r\breve r1 g1 d'2 d d2. c4 bes2 g bes bes a1 g2 bes2. a4 g1 f2 g g d' d d2. c4 bes2 g4 a
        bes c d bes c2. bes4 a2 g1 f2 g\breve r\breve r2 bes1 bes2 c2. bes4 bes2 a bes d d d c c ees1
        d2 d d d c bes a d2. c4 bes a g2 bes a g1 f2
        g1 r2 g2 a bes c a bes2. bes4 c2 d d c d d c a bes c a1 g2 g g1 f2 f d f f f
        e1 e d4 e f g a bes c2. bes4 bes1 a2 bes r4 d4 c a bes bes a2 g f f e1 d d2 r4 d'4 c a bes bes a2
        g2 f f e1 d2 d'2. c4 bes2. a4 g2. f4 d2 e1 d\breve\fermata
        \bar"|."
      }
    >>
    \new Lyrics = "cantusLyrics" <<
      \set Score.skipBars = ##t
      \revert Score.SpacingSpanner #'spacing-increment % CHECK: no effect?
      \cadenzaOff % turn bar lines on again
      \once \override Staff.Clef #'full-size-change = ##t
      \set Staff.forceClef = ##t
      \key d \minor
      \time 2/2
      \override Voice.NoteHead #'style = #'default
      \override Voice.Rest #'style = #'default
      %\lyricmode {
      %  _1 _ _
      %  O fe2 -- li2 -- cioc2. -- chi4 miei2 fe2 -- li2 -- ci2
      %  voi1 __ _ _ _ _2
      %  O2 fe2 -- li2 -- cioc2. -- chi4 miei2
      %  fe4 -- __ _ _ _ _ _ li2 -- __ _ _ _ _ ci2
      %  voi1
      %  \skip 2*7
      %  Che1 se2 -- te2. Car'4 al2 mio2 sol,2
      %  per2 -- che2 sem2 -- bianz'2 ha2 -- ve1 -- te2
      %  Degl'2 oc2 -- chi2 che2 gli2 fur2
      %  si2 __ _ _ dol2 cie2 re2 __ _ _ _ i1
      %  _2 Voi2 ben voi se -- te voi,2.
      %  voi4 ben2 voi se -- te voi,
      %  voi2 fe -- li -- ci,2
      %  ed2 i1 -- o,2
      %  ed2 i1 -- o,2
      %  Io2 non, che per que -- tar1
      %  vo1 -- stro4 -- __ _ _ _ _ _
      %  de2 -- __ _ si2 -- __ _ _ o2
      %  \skip 4*1
      %  Corr'4 a mi -- rar l'on -- de2 mi2  strug1 -- go1 po1 i,2
      %  \skip 4*1
      %  Corr'4 a mi -- rar l'on -- de2 mi2  strug2 -- go2 po1 i,2
      %  mi2 -- __ _
      %  strug2 -- __ _ _ _ go2 po1 -- i
      %}
      \lyricmode {
      	_1 _ _
      	O felici occhi1 miei2 felice2 _1 voi _ _ _
        ii1 _ _ _ _ _ _ _ _
      	\skip 2*7
        Che sete2 _2. car'4 almio1 sel2 per che sem2 bianz' have _1
        te2 de gl'occhi1 che2 gli fur si1. dolce1 re-1. _2 i1
        _2 voi ben voi sete1 voi2. ii4
        \skip 2*5
        voi2 voi2 felici1 et2 io1. ii1 _1
        io2 no che per que- tar1 vos tro _ _4 desio _1 _ _4
        cor r'a mirar2 l'on4 de2 mi strugo1 poi _ _2.
        ii4
        \skip 2*9
        mi1 stru2. ggo4 _1 poi
      }
    >>
    \new Voice  = "altusNotes" <<
      #(set-accidental-style 'forget)
      \set Score.skipBars = ##t
      \revert Score.SpacingSpanner #'spacing-increment % CHECK: no effect?
      \cadenzaOff % turn bar lines on again
      \once \override Staff.Clef #'full-size-change = ##t
      \set Staff.forceClef = ##t
      \key d \minor
      \time 2/2
      \override Voice.NoteHead #'style = #'default
      \override Voice.Rest #'style = #'default
      \relative c' {
        \set Staff.instrumentName = #"Altus"
        \clef mezzosoprano
        d1 e2 g g fis g bes bes a bes2. a4 g2 bes2. a4 g1 f2 g1 r2 d2 e c d bes'2. a4 g1 f2 g1 g
        g2. f4 e1 d bes2 c1 c2 d2. c4 bes2 a bes f'1 f2 g2. f4 f2 e f f f f f f
        g2 g r2 bes bes bes a g f1 d ees2 e e1 d
        d\breve r2 d2 e f g2. f4 e2 d e1 d2 d e f2. d4 g1 f2 g d e1 d2 d f d d d
        c1 c a2 a' a a g1 f d2 r4 d4 e f g e f2 e d d c2. bes4 a1 g2 r4 d'4
        e4 f g e f2 e d d c2. bes4 a2 a bes2. c4 d2 e1 d2 c1 bis\breve\fermata
      }
    >>
    \new Lyrics = "altusLyrics" <<
      \set Score.skipBars = ##t
      \revert Score.SpacingSpanner #'spacing-increment % CHECK: no effect?
      \cadenzaOff % turn bar lines on again
      \once \override Staff.Clef #'full-size-change = ##t
      \set Staff.forceClef = ##t
      \key d \minor
      \time 2/2
      \override Voice.NoteHead #'style = #'default
      \override Voice.Rest #'style = #'default
      \lyricmode {
      	O1 felici occhi1 miei2 fe2 lici1 voi _ _ _ _1 _2
        fe lici1 voi2 ii
      	\skip 2*15
        che1 sete2 _2. car'4 almio1 sol2 _ _ ii _ _ _ _ _ per che sem2 bianz' ha uete1
        _2 de gliocchi1 che2 gli fur1 si1 dolci2 et re-1 _ i1 _ _2
        voi ben voi sete1 voi2
        \skip 2*5
        felici1 _4 et4 io1 _1 et2 io1.
        io2 non che per que- tar1 vostro _ _2 des2 io1 _1 _2 _4
        cor r'a mirar2 l'on4 de2 mi strugo1 poi _ _2.
        ii4
        \skip 2*9
        mi2 struggo1 _1 _1 poi
      }
    >>
    \new Voice = "tenorNotes" <<
      #(set-accidental-style 'forget)
      \set Score.skipBars = ##t
      \revert Score.SpacingSpanner #'spacing-increment % CHECK: no effect?
      \cadenzaOff % turn bar lines on again
      \once \override Staff.Clef #'full-size-change = ##t
      \set Staff.forceClef = ##t
      \key d \minor
      \time 2/2
      \override Voice.NoteHead #'style = #'default
      \override Voice.Rest #'style = #'default
      \relative c' {
        \set Staff.instrumentName = #"Tenor"
        \clef alto
        r\breve d1 e2 g g f g g, d' d g,1 r1 g1 d'2 d c c bes g bes bes a1 g d'
        ees2. d4 c2 bes a1 g2 g1 g2 a2. g4 f2 e f d'1 d2 ees2. bes4 d2 c bes bes bes bes a a
        c1 bes2 bes f' f f d d1 bes bes2 g c2. bes4 a1
        g2 bes bes bes c bes g d' d r4 g,4 a2 bes c a bes2. bes4 c2 d d c d d r2 bes2 c1 a2 a bes bes
        bes2 bes g1 g f f' d2 ees c1 bes r2 r4 bes4 c d bes c a2 bes2. a4 g1 f2 g g r2 r4 bes4 c d bes c
        a2 bes2. a4 g1 f2 g2. a4 bes2 c g\longa\fermata
      }
    >>
    \new Lyrics = "tenorLyrics" <<
      \set Score.skipBars = ##t
      \revert Score.SpacingSpanner #'spacing-increment % CHECK: no effect?
      \cadenzaOff % turn bar lines on again
      \once \override Staff.Clef #'full-size-change = ##t
      \set Staff.forceClef = ##t
      \key d \minor
      \time 2/2
      \override Voice.NoteHead #'style = #'default
      \override Voice.Rest #'style = #'default
      \lyricmode {
        _1 _
      	O1 felici occhi1 miei2 fe2 lici1 voi
        %_ _ _ _1 _2
        %fe lici1 voi2 ii
      	%\skip 2*15
        %che1 sete2 _2. car'4 almio1 sol2 _ _ ii _ _ _ _ _ per che sem2 bianz' ha uete1
        %_2 de gliocchi1 che2 gli fur1 si1 dolci2 et re-1 _ i1 _ _2
        %voi ben voi sete1 voi2
        %\skip 2*5
        %felici1 _4 et4 io1 _1 et2 io1.
        %io2 non che per que- tar1 vostro _ _2 des2 io1 _1 _2 _4
        %cor r'a mirar2 l'on4 de2 mi strugo1 poi _ _2.
        %ii4
        %\skip 2*9
        %mi2 struggo1 _1 _1 poi
      }
    >>
    \new Voice  = "bassusNotes" <<
      #(set-accidental-style 'forget)
      \set Score.skipBars = ##t
      \revert Score.SpacingSpanner #'spacing-increment % CHECK: no effect?
      \cadenzaOff % turn bar lines on again
      \once \override Staff.Clef #'full-size-change = ##t
      \set Staff.forceClef = ##t
      \key d \minor
      \time 2/2
      \override Voice.NoteHead #'style = #'default
      \override Voice.Rest #'style = #'default
      \relative c' {
        \set Staff.instrumentName = #"Bassus"
        \clef varbaritone
        r\longa r\breve g1 d'2 d d2. c4 bes2 g bes bes a1 g d d2 d ees2. f4 g2 g c,1 c d
        g2 c,1 c2 f2. e4 d2 c bes\breve r\breve r2 bes2 bes bes f' f c4 d e f g2 bes bes bes f g
        d1 g ees2. d4 c1 d
        g1 r2 g2 f g c, d g1 r\longa r1 r2 d2 g1 c,2 c d1 bes bes2 bes c1 c d2. e4 f2 f
        g2 ees f1 bes, r2 r4 g'4 f d ees c d2 bes c c d1 g r2 r4 g4 f d ees c d2 bes
        c2 c d d r2 g1 c, bes2 c1 g'\breve\fermata
      }
    >>
  >>
}

altusLyrics = \lyricmode {
 % incipit
 O \skip 1*6
 
 % main
 O1 fe2 -- li2 -- cioc2 -- chi2 miei2 fe2 -- li2 -- ci2
 voi2 __ _ _ _ _ _ _ _ _ _ \skip 2*1
 fe2 -- li -- ci voi
 %fe2 -- __ _ li1 -- ci2 voi1
 %fe1 -- li2 -- __ _ _ _ ci1 voi2
 _2 ii2 _ _ _ _ _ _ _ _ _ _ _ _ _ _
 Che1 se2 -- te2. Car'4 al2 mio2 sol,2
 Che1 se2 -- te2. Car'4 al2 mio2 sol,2
 per2 -- che2 sem2 -- bianz'2 ha2 -- ve2 -- te2 \skip 2*1
 De2 glioc2 -- chi2 che2 gli2 fur1
 si1 dol2 ci2 et1 re1 i1 \skip 1*1 \skip 2*1
 Voi2 ben voi se2. -- te4 voi,2.
 %voi4 ben2 voi se -- te voi,
 %voi2
 _ _ _ _ _ 
 fe -- li -- ci,2
 ed2 i1 -- o,2
 ed2 i1 -- o,2
 Io2 non, che per que -- tar1
 vo1 -- stro4 -- __ _ _ _ _ _
 de2 -- __ _ si2 -- __ _ _ o2
 \skip 4*1
 Corr'4 a mi -- rar l'on -- de2 mi2  strug1 -- go1 po1 i,2
 \skip 4*1
 Corr'4 a mi -- rar l'on -- de2 mi2  strug2 -- go2 po1 i,2
 mi2 -- __ _
 strug2 -- __ _ _ _ go2 po1 -- i
}
