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

include ../include/common.mk

DOCS = \
	DDU_license.txt \
	DDU_ThirdPartyLicenseReadMe.txt \
	Legal_Notice.txt

DESTFILES = $(DOCS:%=$(USRDDULEGALDOCS)/%)

DESTDIRS= \
        $(USRDDULEGALDOCS)

all:

install: $(DESTDIRS) $(DESTFILES)

include $(WS_TOP)/include/target.mk
