#  explore_dependencies.py
#  This file is part of the Earlilypond project
#  
#  Copyright (c) 2013 Benjamin Coudrin <benjamin.coudrin@ggmail.com>
#                All Rights Reserved
#
#  This program is free software. It comes without any warranty, to
#  the extent permitted by applicable law. You can redistribute it
#  and/or modify it under the terms of the Do What The Fuck You Want
#  To Public License, Version 2, as published by Sam Hocevar. See
#  http://sam.zoy.org/wtfpl/COPYING for more details.

import sys
import os

def usage():
	print 'Usage : %s [file]' % sys.argv[0]

def main():
	if len(sys.argv) < 2:
		sys.exit(usage())

	pwd = os.getcwd()
	print pwd
	
	file_list = list()
    
	filepath = sys.argv[1]
	f=open(filepath,'r')
	for line in f:
		if line.find("\include") > -1:
			sline = line.split()
			print sline[1]
	
	
if __name__ == "__main__":
    main()
