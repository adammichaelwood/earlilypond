%%  notes.ily
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

\include "tweaks.ily"


%% Licence notice
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

frenchLicence = \markup \column {
  \vspace #10
  \justify \fontsize #-2 {
    La présente édition est libre. Elle est distribuée sans aucune garantie, dans les limites permises par la loi. Vous pouvez
    en faire usage, la redistribuer et/ou la modifier selon les termes de la licence Do What The Fuck You Want To Public Licence,
    Version 2, telle que publiée par Sam Hocevar. Voir \with-url #"http://sam.zoy.org/wtfpl/COPYING" "http://sam.zoy.org/wtfpl/COPYING"
    pour plus de détails.
  }
  \vspace #1
  \justify \fontsize #-2 {
    Cette édition fait partie du projet Earlilypond. Les fichiers sources du projet et de cette édition sont
    accessibles, distribuables et modifiables selon les termes de la Do What The Fuck You Want To Public Licence, Version 2, depuis la page web
    du projet \with-url #"https://code.google.com/p/earlilypond/" "https://code.google.com/p/earlilypond/"
  }
}

englishLicence = \markup \column {
  \vspace #10
  \justify \fontsize #-2 {
    This edition is free content. It comes without any warrant to the extent permitted by applicable law. You can
    use it, redistribute it and/or modify it under the terms of the Do What The Fuck You Want To Public Licence, Version 2,
    as published by Sam Hocevar. See \with-url #"http://sam.zoy.org/wtfpl/COPYING" "http://sam.zoy.org/wtfpl/COPYING"
    for more details
  }
  \vspace #1
  \justify \fontsize #-2 {
    This work is part of the Earlilypond project. Source files of the project and of this edition can be found, redistributed and
    modified according to the Do What The Fuck You Want To Public Licence, Version 2, from the web page of the project
    \with-url #"https://code.google.com/p/earlilypond/" "https://code.google.com/p/earlilypond/"
  }
}