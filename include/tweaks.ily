%%  tweaks.ily
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

#(define-markup-command (fromproperty layout props symbol)
   (symbol?)
   (let ((m (chain-assoc-get symbol props))
         (caps? (chain-assoc-get 'caps props)))
     (if (markup? m)
         (interpret-markup layout props
                           (if caps?
                               (make-smallCaps-markup m)
                               m))
         empty-stencil)))

#(define-markup-command (caps layout props arg) (markup?)
   (interpret-markup layout (prepend-alist-chain 'caps #t props)
                     (make-smallCaps-markup arg)))