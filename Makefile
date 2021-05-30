PORTNAME=	chia-blockchain
PORTVERSION=	1.1.6
#DISTVERSION=	1.1.6
CATEGORIES=	finance

BUILD_DEPENDS=	bash:shells/bash ${RUST_DEFAULT}>=1.41:lang/${RUST_DEFAULT} \
		${PYTHON_PKGNAMEPREFIX}pip>=0:devel/py-pip@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}setuptools>0:devel/py-setuptools@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}wheel>=0.24.0:devel/py-wheel@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}cffi>=1.0:devel/py-cffi@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}virtualenv>=0:devel/py-virtualenv@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}cryptography>=3.3.2:security/py-cryptography@${PY_FLAVOR} \
		node:www/node npm:www/npm git:devel/git

USES+=		python:3.8+
USE_PYTHON=     autoplist distutils concurrent

SQLITE_RUN_DEPENDS=     ${PYTHON_PKGNAMEPREFIX}sqlite3>0:databases/py-sqlite3@${PY_FLAVOR}

MAINTAINER=	risner@stdio.com
COMMENT=	Chia for FreeBSD

LICENSE=	APACHE20

USE_GITHUB=	yes
GH_ACCOUNT=	Chia-Network
GH_TUPLE=	\
		Chia-Network:chia-blockchain-gui:444c6966fe50183c8d72cbc972c5403db341739c:Chia_Network_chia_blockchain_gui/chia-blockchain-gui \
		Chia-Network:mozilla-ca:6e8c42b3ef7d4ded22a994f9886e63f0060020bd:Chia_Network_mozilla_ca/mozilla-ca \
		Chia-Network:clvm_rs:6b32aef:Chia_Network_clvm_rs/clvm_rs

# if ${_t_tmp:C@^([^:]*):([^:]*):([^:]*)((:[^:/]*)?)((/.*)?)@\4@:S/://:C/[a-zA-Z0-9_]//g}


pre-configure:
#	@${CP}  ${FILESDIR}/Makefile ${WRKSRC}

#	@${CP}  ${FILESDIR}/print-submodule-gh_tuple.awk ${WRKSRC}
#	@${CP}  ${FILESDIR}/print-submodule-gh_tuple.sh ${WRKSRC}

.include <bsd.port.mk>
