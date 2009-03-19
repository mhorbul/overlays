# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit distutils

DESCRIPTION="UUID object and generation functions (Python 2.3 or higher)"
HOMEPAGE="http://pypi.python.org/pypi/uuid/1.30"
SRC_URI="http://pypi.python.org/packages/source/u/uuid/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

DEPEND=">=dev-lang/python-2.3
		dev-python/setuptools"
RDEPEND="${DEPEND}"

src_install() {
	distutils_src_install
}
