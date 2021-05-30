PORTNAME=	chia-blockchain
PORTVERSION=	1.1.6
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	risner@stdio.com
COMMENT=	Chia blockchain full node, farmer, timelord, and wallet
LICENSE=	APACHE20

# TODO py-cryptography MUST be upgraded to 3.4.7, leaving 3.3.2 for now.
BUILD_DEPENDS=	${RUST_DEFAULT}>=1.41:lang/${RUST_DEFAULT} \
		${PYTHON_PKGNAMEPREFIX}cryptography>=3.3.2:security/py-cryptography@${PY_FLAVOR}

# TODO Bash, node, npm, and git MAY not be required.
#		node:www/node npm:www/npm git:devel/git

# TODO cffi MAY not be used, upstream should declare if cffi needed.
#		${PYTHON_PKGNAMEPREFIX}cffi>=1.0:devel/py-cffi@${PY_FLAVOR} \

USES+=		python:3.7-3.9
USE_PYTHON=     autoplist distutils concurrent


pre-configure:
#	@${CP}  ${FILESDIR}/Makefile ${WRKSRC}

# TODO Upstream source guide required to run, I'll need to address later.
# SQLITE_RUN_DEPENDS=     ${PYTHON_PKGNAMEPREFIX}sqlite3>0:databases/py-sqlite3@${PY_FLAVOR}

.include <bsd.port.mk>
