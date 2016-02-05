# -*- mode: python -*-
# SCons build file

import os

# We append the os path to the scons path so that it can gain access to the pdflatex program
env = Environment(ENV={'PATH': os.environ['PATH']}, PDFLATEX='xelatex')

# Pass pdflatex flags to scons
env.AppendUnique(PDFLATEXFLAGS='-synctex=-1')       # Generates the .synctex index that allows clicking in the pdf to open up corresponding code section in Atom
env.AppendUnique(PDFLATEXFLAGS='-shell-escape')     # Allows running pdflatex in multiple shells. Speeds up building of tikz images.
env.AppendUnique(PDFLATEXFLAGS='-halt-on-error')    # Halts compilation on the first error discovered. Speeds up development and debugging

basename = 'electromagnetics'                         # Define basename of the main tex file
pdf = env.PDF(basename + '.tex')            # Primary source of the pdf file

env.Clean(pdf, basename + '.synctex')       # when cleaning remove the pdf and the .synctex file
env.Decider('timestamp-match')           # Use timestamp instead of MD5 to detect changes in the source code. Makes soncs more like make.
# env.Decider('MD5-timestamp')            # Mix of both timestamp matching and MD5. Optimal choice (but not linke make)


Default(pdf)            # Default target of the builder
