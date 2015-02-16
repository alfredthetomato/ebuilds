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

src_install() {
	insinto "/usr/share/icons"
	mv "${S}/Breeze Dark" "${S}/Breeze-Dark" # the space causes unhappiness
	doins -r Br*
}

# Gnomey cache stuff
pkg_preinst() { gnome2_icon_savelist; }
pkg_postinst() { gnome2_icon_cache_update; }
pkg_postrm() { gnome2_icon_cache_update; }
