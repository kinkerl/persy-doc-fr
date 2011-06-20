LANGS=de 
SHELL=/bin/sh

SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
PAPER         =

# Internal variables used in sphinx
PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter
ALLSPHINXOPTS   = -d /tmp/_build/doctrees $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) . 


clean:
	rm -rf build/*
	rm -f doc/*.pyc
	rm -rf doc/_tmp

all: clean
	#build developer documentation and place it in usr/share/doc/persy
	mkdir -p doc/_tmp
	echo $(VERSION) > doc/_tmp/VERSION
	
	#create the folder for the documentation and clean it
	mkdir -p build/
	
	cd doc && $(SPHINXBUILD) -a -b html $(ALLSPHINXOPTS) ../build/
	@echo
	@echo "Build finished. The HTML pages are in usr/share/doc"

	@echo "building..."

