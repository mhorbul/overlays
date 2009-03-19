# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit distutils

DESCRIPTION="A Twisted-based publish/subscribe messaging server that uses the STOMP protocol"
HOMEPAGE="http://pypi.python.org/pypi/morbid/0.8.4"
SRC_URI="http://pypi.python.org/packages/source/m/morbid/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

DEPEND="dev-python/twisted
        dev-python/setuptools"
RDEPEND="${DEPEND}"

src_install() {
	distutils_src_install
}
