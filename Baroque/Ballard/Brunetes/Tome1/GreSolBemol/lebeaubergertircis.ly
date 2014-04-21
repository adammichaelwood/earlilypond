%%  lebeaubergertircis.ly
%%  This file is part of the Earlilypond project
%%  
%%  Copyright (c) 2014 Benjamin Coudrin <benjamin.coudrin@gmail.com>
%%                All Rights Reserved
%%
%%  This program is free software. It comes without any warranty, to
%%  the extent permitted by applicable law. You can redistribute it
%%  and/or modify it under the terms of the Do What The Fuck You Want
%%  To Public License, Version 2, as published by Sam Hocevar. See
%%  http://sam.zoy.org/wtfpl/COPYING for more details.

AAaaVerseUnNotes = {
  \repeat volta 2 {
    \partial 2 a2
    bes4 a g fis
    g2 a4. (bes8)
    \once \stemDown \once \slurUp \appoggiatura c16 bes4 a8 [g] fis4 \once \stemDown g8. (a16)
  }
  \alternative {
    {\partial 2 \vpmordant a4 g}
    {\vpmordant a4 g r4 \once \stemDown g8 a}
  }
  \repeat volta 2 {
    bes4. c8 d4 d
    \vpmordant a2 bes4 \vcoul a
    g8 [fis] g [a] \vpmordant a4. \once \stemDown g8
    fis4 g a4. (bes16 [c])
    bes4 a bes g
    fis g a4. (bes16 [c])
    \vcoul bes4. a8 \vpmordant a4. g8
  }
  \alternative {
    {g2. \once \stemDown g8 a}
    {g1}
  }
  \bar "||" \break
}

AAaaVerseDeuxNotes = {
  \repeat volta 2 {
    \partial 2 a2^\markup{\italic "Second Couplet"}
    bes4 a g fis
    g2 a4. (bes16 [c])
    \vscoul bes4. a8 fis4 g8 [a16 bes]
  }
  \alternative {
    {\partial 2 \vpmordant a4 \once \stemDown g}
    {\vpmordant a4 \once \stemDown g r4 \once \stemDown g8 a}
  }
  \repeat volta 2 {
    bes4. c8 d4 d
    \vpmordant a2 bes8. ( c16*1/2 [d] ) c8*2/3 [bes a]
    g8 [fis] \once \stemDown g8. (a16*1/2 [bes]) c8*2/3 [bes a] bes8 [g]
    fis4 g a2
    \vsmartel bes4 bes16 [a8 bes16] c16 ([bes] \once \stemDown \vcoul a8 [\once \stemDown g16 f]) g [e]
    \vpmordant fis4 g a4. (bes16 [c])
    c4 (\vflat c8) d16 ([c]) bes4 (\vpmordant a8.) g16
  }
  \alternative {
    {g2. g8 a}
    {g1}
  }
  \bar "||" \break
}

AAaaVerseTroisNotes = {
  \repeat volta 2 {
    \partial 2 a2^\markup{\italic "Autres Couplets"}
    bes8. (a16) c16*2/3 [bes a] g4. (a16 [g]) a [fis]
    g2 a4 a
    (bes8) [a16 (bes] g8) a16 (e) fis4 g8 ([g16 a])
  }
  \alternative {
    {\partial 2 \vpmordant a4 \once \stemDown g}
    {\vpmordant a4 \once \stemDown g r4 \once \stemDown g8 a}
  }
  \repeat volta 2 {
    bes4. c8 d8. (ees16 c8 [a16]) bes
    \vpmordant a2 d8. (c16) c8 [\vpmordant bes16 a]
    g4 bes16 [a8 bes16] c16*4/3 [bes a] bes8 [g]
    fis4 g a2
    bes8 [a] c [bes] \vscoul a4. g8
    fis4 g a16 ([bes16 c8] \vpmordant c4)
    d16 [(a)] bes (fis) s16 g8 s16 bes4 (\vpmordant a8. ) g16
  }
  \alternative {
    {g2. g8 a}
    {g1}
  }
  \bar "|."
}

AAaaVoice = \relative c'' {
  \clef soprano
  \key d \minor
  \bla
  \autoBeamOff
  \AAaaVerseUnNotes
  \AAaaVerseDeuxNotes
  \AAaaVerseTroisNotes
}

AAaaLyricsUn = \lyricmode {
  \repeat volta 2 {
    Le beau Ber- ger Tir- cis,
    Près de sa chere An-
  }
  \alternative {
    {ne- te;}
    {ne- te; Sur les}
  }
  \repeat volta 2 {
    bords du Loir as- sis,
    Chan- toit des- sus sa Mu- se- te;
    Ah! pe- ti- te Bru- ne- te,
    Ah! tu me fais mou-  
  }
  \alternative {
    {rir! Sur les... }
    {rir!}
  }
}

AAaaLyricsDeux = \lyricmode {
  \repeat volta 2 {
    Ah! pe- tit à pe- tit,
    Je sens que je m'en-
  }
  \alternative {
    {ga- ge;}
    {ga- ge; L'A- mour}
  }
  \repeat volta 2 {
    prends trop de cré- dit,
    Je n'en dis pas da- van- ta- ge;
    Ma bou- che soy- ez sa- ge
    Mes yeux en ont trop
  }
  \alternative {
    {dit. L'A- mour... }
    {dit.}
  }
}

AAaaLyricsTrois = \lyricmode {
  \repeat volta 2 {
    Le sou- cy jau- nis- sant,
    La pa- le Vi- o- 
  }
  \alternative {
    {let- te;}
    {let- te; sont les}
  }
  \repeat volta 2 {
    fleur qui vont nais- sant
    Des lar- mes que Tir- cis jet- te;
    Ah! pe- ti- te Bru- ne- te,
    Ah! _ tu me fais mou- 
  }
  \alternative {
    {rir! Sont les... }
    {rir!}
  }
}

AAaaFigures = \figuremode {
  \repeat volta 2 {
    <_+>2
    s4 <6> <6> <_+>
    s1
    s2 <_+>
  }
  \alternative {
    {s2}
    {s1}
  }
  \repeat volta 2 {
    s1
    s2 <6>
    s2 <6>4. <5>8
    <_+>4 s2.
    s4 <6 _-> <6> <6>
    s1
    s1
  }
  \alternative {
    {s1}
    {s1}
  }
}

AAaaBassNotes = \relative c {
  \repeat volta 2 {
    \partial 2 d2
    g4 f ees d
    g, g' fis2
    g4 c, d ees    
  }
  \alternative {
    {d4 g,}
    {d'4 g,2.}
  }
  \repeat volta 2 {
    g'4. a8 bes4 bes,
    f' ees d2
    ees4. d8 c2
    d4 e fis2
    g4 c, d ees
    d g, fis2
    g4 c, d2
  }
  \alternative {
    {g1}
    {g1}
  }
}

AAaaBass = \relative c {
  \clef bass
  \key d \minor
  \bla
  \autoBeamOff
  \AAaaBassNotes
  \AAaaBassNotes
  \AAaaBassNotes
}

AAaaScore = \score {
  \new StaffGroup  <<
    \new Voice = "Voice" <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \AAaaVoice
    >>
    \new Lyrics \lyricsto Voice	 {
      \AAaaLyricsUn
      \AAaaLyricsDeux
      \AAaaLyricsTrois
    }
    \new Staff \with { \consists "Volta_engraver" } <<
      \override Staff.BarLine #'allow-span-bar = ##f
      #(set-accidental-style 'forget)
      \figuremode {
        \AAaaFigures
        \AAaaFigures
        \AAaaFigures
      }
      \AAaaBass
    >>
  >>
  \header {
    piece = "Le beau berger Tircis"
  }
}

AAaaLyricsSup = \markup {
  \column {
    \vspace #2
    \fill-line {
      \hspace #0.1
      \column {
        \italic "Second Couplet"
        "Au lieu d'aller paissant"
        "La pointe de l'herbette;"
        "Son cher troupeau languissant,"
        "Se couche près sa houlette:"
        "Ah! petite Brunete,"
        "Ah! tu me fais mourir!"
      }
      \hspace #0.1 
      \column {
        \italic "Troisième Couplet"
        "Les Ruisseaux vont roulant"
        "Leur onde pure & nete,"
        "Et murmurent, se mêlant"
        "Aux larmes que Tircis jete:"
        "Ah! petite Brunete,"
        "Ah! tu me fais mourir!"
      }
      \hspace #0.1 
      \column {
        \italic "Quatrième Couplet"
        "Les Echos d'alentour"
        "Que sa plainte discrete"
        "Fait encor sécher d'amour"
        "Redisent la Chansonnete;"
        "Ah! petite Brunete,"
        "Ah! tu me fais mourir!"
      }
      \hspace #0.1
    }
    \vspace #2
    \fill-line {
      \hspace #0.1
      \column {
        \italic "Autre Couplet"
        "Rêver incessamment,"
        "Chercher la solitude,"
        "S'habiller negligemment,"
        "Cherir son inquietude;"
        "C'est-là toute l'étude,"
        "D'un malheureux Amant."
      }
      \hspace #0.1 
      \column {
        \italic "Autre Couplet"
        "Vous negligez mes soins,"
        "Ma tendresse vous gêne;"
        "Mes tristes yeux sont témoins"
        "De vôtre nouvelle chaîne:"
        "Et pour comble de peine,"
        "Je n'en aime pas moins."
      }
      \hspace #0.1
    }
  }
}

