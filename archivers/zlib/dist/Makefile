# $NetBSD: Makefile,v 1.2 2007/08/02 15:07:27 joerg Exp $
#
# Replacement Makefile for zlib.
#

OBJS=	adler32.o compress.o crc32.o deflate.o gzio.o \
	infback.o inffast.o inflate.o inftrees.o trees.o \
	uncompr.o zutil.o
LOBJS=	${OBJS:.o=.lo}

all: libz.la

libz.la: ${LOBJS}
	${LIBTOOL} --tag=CC --mode=link ${CC} ${LDFLAGS} ${CFLAGS} -o $@ \
	    ${LOBJS} -version-info 1:2 -rpath ${PREFIX}/lib

libz.a: ${OBJS}
	${AR} cq $@ ${OBJS}


.SUFFIXES: .c .o .lo

.c.o:
	${CC} -c ${CFLAGS} -o $@ $<

.c.lo:
	${LIBTOOL} --tag=CC --mode=compile ${CC} -c ${CFLAGS} -o $@ $<
