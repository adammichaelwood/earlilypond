#!/bin/sh

# tag_release_package.sh
#  This file is part of the Earlilypond project
#  
#  Copyright (c) 2013 Benjamin Coudrin <benjamin.coudrin@gmail.com>
#                All Rights Reserved
#
#  This program is free software. It comes without any warranty, to
#  the extent permitted by applicable law. You can redistribute it
#  and/or modify it under the terms of the Do What The Fuck You Want
#  To Public License, Version 2, as published by Sam Hocevar. See
#  http://sam.zoy.org/wtfpl/COPYING for more details.

# Create a tmp directory to build the tag
TMPDIR=$(mktemp -d /tmp/tag.XXXXXXXXXX)

if [ -f "$1" ]
then
	echo $1 " is a valid file"
else
	echo $1 " is not a valid file"
fi
