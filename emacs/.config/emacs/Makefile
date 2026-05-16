#
# Makefile for building init files from an org source file.
#
SRCFILES = \
	post-init.org \
	pre-early-init.org \
	pre-init.org \
	$(NULL)

PRODUCTS = $(patsubst %.org,%.el,$(SRCFILES))

INSTALLDIR = ${HOME}/.config/emacs

TEMPLATESDIR = $(INSTALLDIR)/templates
VARDIR = $(INSTALLDIR)/var
SNIPPETSDIR = $(VARDIR)/snippets
EMACS = /usr/bin/emacs

REQUIRED_DIRS =\
	$(TEMPLATESDIR)\
	$(SNIPPETSDIR)\
	$(VARDIR)\
	$(NULL)

_MKDIRS := $(shell for d in $(REQUIRED_DIRS) ;\
		 do\
			 [ -d $$d ] || mkdir -p $$d ;\
		 done)

.PHONY: all clean install

all : $(PRODUCTS)

clean :
	rm $(PRODUCTS)

%.el : %.org
	$(EMACS) -Q --batch --eval\
		"(progn\
			(require 'ob-tangle)\
			(dolist (file command-line-args-left)\
			(with-current-buffer (find-file-noselect file)\
				(org-babel-tangle))))" $<

post-init.el : post-init.org

pre-early-init.el : pre-early-init.org

pre-init.el : pre-init.org
