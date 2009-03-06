This project is a bunch of headless git branches you can use in Gentoo.  Instead of
having multiple Gentoo overlay locations on your system, you can merge in the
branches you would like into your main git-based gentoo portage tree.

* Example

        cd /usr/portage
        git pull git://github.com/gentoo/overlays.git couchdb
        emerge couchdb

