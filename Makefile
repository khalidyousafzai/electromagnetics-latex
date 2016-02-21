default: electromagnetics.pdf
	scons
	evince electromagnetics.pdf &

# The pdf depends upon the externalized tikz image pdfs in the build/ sub-folders
electromagnetics.pdf: $(wildcard build/*/*.pdf)

# if the .tex file associated with an externalized build/*/*.pdf file is changed this target deletes the corresponding pdf file to force recompilation
build/%.pdf: fig/%.tex
	rm -f $@
