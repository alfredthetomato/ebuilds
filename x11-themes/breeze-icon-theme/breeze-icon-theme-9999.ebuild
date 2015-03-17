# Copyright 2015 alfredthetomato
# Distributed under the terms of the GNU General Public License v3 or later

EAPI=5

inherit git-r3 gnome2-utils

DESCRIPTION="The new icon theme for Plasma 5"
HOMEPAGE="https://github.com/NitruxSA/plasma-next-icons"
EGIT_REPO_URI="git://github.com/NitruxSA/plasma-next-icons.git"

RESTRICT="binchecks strip"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~ppc"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

# hackey thing as simlinks cause racey behaviour
src_prepare() {
	rm "Breeze/actions/LO_icons_breeze/special folders/sfx2/imglst/actiontemplates018.svg"
}

src_install() {
	insinto "/usr/share/icons"
	mv "${S}/Breeze Dark" "${S}/Breeze-Dark" # the space causes unhappiness
	# the hackey simlink thing continues
	ln -s "${S}/Breeze/actions/LO_icons_breeze/special folders/sfx2/imglst/action{templates018,view025}.svg"
	doins -r Br*
}

# Gnomey cache stuff
pkg_preinst() { gnome2_icon_savelist; }
pkg_postinst() { gnome2_icon_cache_update; }
pkg_postrm() { gnome2_icon_cache_update; }
