# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit distutils

DESCRIPTION="This is a transport neutral client implementation of the STOMP protocol."
HOMEPAGE="http://pypi.python.org/pypi/stomper/0.2.2"
SRC_URI="http://pypi.python.org/packages/source/s/stomper/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

DEPEND="dev-python/setuptools"
RDEPEND="${DEPEND}"

src_install() {
	distutils_src_install
}
