######################################################################
#                                                                    #
#                           Moca                                     #
#                                                                    #
#          Pierre Weis, INRIA Rocquencourt                           #
#          Fr�d�ric Blanqui, projet Protheo, INRIA Lorraine          #
#                                                                    #
#  Copyright 2005-2008,                                              #
#  Institut National de Recherche en Informatique et en Automatique. #
#  All rights reserved.                                              #
#                                                                    #
#  This file is distributed under the terms of the Q Public License. #
#                                                                    #
######################################################################

# $Id: Makefile,v 1.5 2008-02-13 10:22:22 weis Exp $

SRCROOTDIR = ../../..

MAKEFILES_DIR = $(SRCROOTDIR)/Mk

default: all

DOCDIR = $(SRCROOTDIR)/doc
THISDOCDIR = $(DOCDIR)/talks/jfla-2008

include $(MAKEFILES_DIR)/../config/Makefile.config
include $(MAKEFILES_DIR)/Config.mk
include $(MAKEFILES_DIR)/Text_config.mk

# The list of TEX source files.
TEXSRCS = talk.tex
HTMLCHTMOBJS =
HTMLCMOBJS =
HTMLCINCLUDES =

# The list of HTML source files.
HTMLCHTMLSRCS =

# Yet no way to obtain HTML files from this TEX file.
HEVEAOBJS =

docdir::
	$(MKDIR) $(THISDOCDIR)
	$(CP) $(TEXOBJS) $(DVIPSOBJS) $(DVIPDFOBJS) $(THISDOCDIR)/

include $(MAKEFILES_DIR)/Text.mk

all:: talk.dvi

clean::
	$(RM) -f *.z[io] *~ *.txt *.log *.aux *.dvi talk.ps spelling

scratch: clean
	$(RM) -f *.bbl

talk.dvi: talk.tex rdt-slides.tex moca-slides.tex
	@ TEXINPUTS=$(OSTYLES):$$TEXINPUTS; export TEXINPUTS; latex talk.tex

talk.ps:
	$(DVIPS) -o talk.ps -t landscape talk.dvi
