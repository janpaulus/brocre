#
# Copyright (c) 2010 LAAS/CNRS
# All rights reserved.
#
# Redistribution  and  use in source   and binary forms,  with or without
# modification, are permitted provided that  the following conditions are
# met:
#
#   1. Redistributions  of  source code must  retain  the above copyright
#      notice and this list of conditions.
#   2. Redistributions in binary form must  reproduce the above copyright
#      notice  and this list of  conditions in the documentation   and/or
#      other materials provided with the distribution.
#
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
LOCODEMOGENOM_DEPEND_MK:=	${LOCODEMOGENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		locoDemo-genom
endif

ifeq (+,$(LOCODEMOGENOM_DEPEND_MK))
PREFER.locoDemo-genom?=	robotpkg

DEPEND_USE+=		locoDemo-genom

DEPEND_ABI.locoDemo-genom?=	locoDemo-genom>=1.2r1
DEPEND_DIR.locoDemo-genom?=	../../motion/locoDemo-genom

SYSTEM_SEARCH.locoDemo-genom=\
	include/locoDemo/locoDemoStruct.h		\
	lib/pkgconfig/locoDemo.pc
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
