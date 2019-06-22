#
# This file and its contents are supplied under the terms of the
# Common Development and Distribution License ("CDDL"). You may
# only use this file in accordance with the terms of the CDDL.
#
# A full copy of the text of the CDDL should have accompanied this
# source. A copy of the CDDL is also available via the Internet at
# http://www.illumos.org/license/CDDL.
#

#
# Copyright 2019 Alexander Pyhalov
#

CLEANOBJS += $(OBJS)

$(BIN_ROOT):
	$(MKDIR) $@

$(USRBIN):
	$(MKDIR) $@

$(USRSHAREPIXMAPS):
	$(MKDIR) $@

$(USRSHAREAPPS):
	$(MKDIR) $@

$(USRDDU):
	$(MKDIR) $@

$(USRDDUDATA):
	$(MKDIR) $@

$(USRDDUTEXTUTILS):
	$(MKDIR) $@

$(BIN_ROOT)/$(PROGRAM): MODE=0755

$(BIN_ROOT)/$(PROGRAM): $(PROGRAM)
	$(INSTALL) $(PROGRAM) $@

$(I18N_ROOT)/%/LC_MESSAGES/ddu.mo: %.mo
	$(INSTALL) $< $@

$(USRBIN)/%: $(USRBIN)

$(USRBIN)/%: MODE=0755

$(USRSHAREAPPS)/%: $(USRSHAREAPPS)

$(USRSHAREPIXMAPS)/%: $(USRSHAREPIXMAPS)

$(USRDDU)/%: $(USRDDU)

$(USRDDUDATA)/%: $(USRDDUDATA)

$(USRDDUTEXTUTILS)/%: $(USRDDUTEXTUTILS)

$(USRDDUDATA)/%: %
	$(INSTALL) $< $@

$(USRDDUTEXTUTILS)/%: %
	$(INSTALL) $< $@

$(USRSHAREAPPS)/%: %
	$(INSTALL) $< $@

$(USRSHAREPIXMAPS)/%: %
	$(INSTALL) $< $@

%.o: %.c
	$(COMPILE.c) $<

%.o: %.s
	$(COMPILE.s) $<

%.mo: %.po
	$(MSGFMT) -o $@ $<

$(PROGRAM):	$(OBJS)
	$(LINK.c) $^ -o $@

clean:
	$(RM) $(CLEANOBJS)
