# Copyright 1999-2008 Patrick Hahn / Vicente Jimenez Aguilar
# Distributed under the terms of the GNU General Public License v2

inherit eutils distutils

DESCRIPTION="Apache CouchDB is a distributed, fault-tolerant and schema-free document-oriented database accessible via a RESTful HTTP/JSON API. Among other features, it provides robust, incremental replication with bi-directional
conflict detection and resolution, and is queryable and indexable using a table-oriented view engine with JavaScript acting as the default view definition language."
HOMEPAGE="http://couchdb.apache.org/"
SRC_URI="mirror://apache/incubator/couchdb/${PV}-incubating/apache-${P}-incubating.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""
RESTRICT="test mirror" #72375

RDEPEND="dev-libs/icu
		dev-lang/erlang
		>=dev-libs/openssl-0.9.8j
		>=net-misc/curl-7.18.2
		dev-lang/spidermonkey"

DEPEND="${RDEPEND}"

S="${WORKDIR}/apache-${P}-incubating"

pkg_setup() {
	enewgroup couchdb 
	enewuser couchdb -1 /bin/bash /var/lib/couchdb couchdb
}

src_compile() {
	./bootstrap
	econf --with-erlang=/usr/lib/erlang/usr/include --prefix=/usr \
		--localstatedir=/var || die "configure failed"
	emake || die "make failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "install failed"

	insinto /var/run/couchdb

	fowners couchdb:couchdb \
		/var/run/couchdb \
		/var/lib/couchdb \
		/var/log/couchdb

	newinitd "${FILESDIR}/couchdb.init-0.8.1" couchdb || die
	newconfd "${FILESDIR}/couchdb.conf-0.8.1" couchdb || die
}
