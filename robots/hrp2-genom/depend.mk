#
# Copyright (c) 2010 LAAS/CNRS
# All rights reserved.
#
# Permission to use, copy, modify, and distribute this software for any purpose
# with or without   fee is hereby granted, provided   that the above  copyright
# notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
# REGARD TO THIS  SOFTWARE INCLUDING ALL  IMPLIED WARRANTIES OF MERCHANTABILITY
# AND FITNESS. IN NO EVENT SHALL THE AUTHOR  BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR CONSEQUENTIAL DAMAGES OR  ANY DAMAGES WHATSOEVER RESULTING  FROM
# LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
# OTHER TORTIOUS ACTION,   ARISING OUT OF OR IN    CONNECTION WITH THE USE   OR
# PERFORMANCE OF THIS SOFTWARE.
#
#                                            Anthony Mallet on Thu Mar  4 2010
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HRP2_GENOM_DEPEND_MK:=	${HRP2_GENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hrp2-genom
endif

ifeq (+,$(HRP2_GENOM_DEPEND_MK)) # -----------------------------------------

PREFER.hrp2-genom?=	robotpkg

DEPEND_USE+=		hrp2-genom

DEPEND_ABI.hrp2-genom?=	hrp2-genom>=1.1
DEPEND_DIR.hrp2-genom?=	../../robots/hrp2-genom

SYSTEM_SEARCH.hrp2-genom=\
	include/hrp2/hrp2Struct.h					\
	'lib/pkgconfig/hrp2.pc:/Version/s/[^0-9.]//gp'

endif # --------------------------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
