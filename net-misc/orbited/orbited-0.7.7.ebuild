# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit distutils

DESCRIPTION="Real-time communication for the browser."
HOMEPAGE="http://orbited.org"
SRC_URI="http://pypi.python.org/packages/source/o/orbited/${P}.tar.gz"

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
