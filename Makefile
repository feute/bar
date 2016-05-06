VERSION=	1.1
PROG=		lemonbar

CFLAGS+=	-Wall -std=c99 -Os -DVERSION="\"$(VERSION)\"" \
								`pkg-config --cflags x11`
LDFLAGS+=	`pkg-config --libs xcb` -lxcb-xinerama -lxcb-randr

PREFIX?=	/usr/local
BINDIR=		${PREFIX}/bin

MAN=

.include <bsd.prog.mk>
