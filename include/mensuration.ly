%% mensuation.ly
%% Author : Benjamin Coudrin, 2013

ter = {
  \override Staff.TimeSignature #'style = #'single-digit
  \time 3/4
}

deux = {
  \override Staff.TimeSignature #'style = #'single-digit
  \time 2/2
}

bin = {
  \override Staff.TimeSignature #'style = #'default
  \time 4/4
}

bla = {
  \override Staff.TimeSignature #'style = #'default
  \time 2/2
}

blater = {
  \once \override Staff.TimeSignature #'stencil = #ly:text-interface::print 
  \once \override Staff.TimeSignature #'text =
    #(markup (#:line ((markup (#:musicglyph "timesig.C22")
                              (#:raise -0.8 #:musicglyph "three")))
               ))
  \time 3/4
}
