# Copyright 2015 alfredthetomato
# Distributed under the terms of the GNU General Public License v3 or later

EAPI=5

inherit git-r3 gnome2-utils

DESCRIPTION="An icon theme for desktops, Flattr is inspired by flat trends."
HOMEPAGE="https://github.com/NitruxSA/flattr-icons"
EGIT_REPO_URI="git://github.com/NitruxSA/flattr-icons.git"

RESTRICT="binchecks strip"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~ppc"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	dodir /usr/share/icons/
	cp -r "${S}/Flattr" "${D}/usr/share/icons/"
	cp -r "${S}/Flattr Dark" "${D}/usr/share/icons/"
}

# Gnomey cache stuff
pkg_preinst() { gnome2_icon_savelist; }
pkg_postinst() { gnome2_icon_cache_update; }
pkg_postrm() { gnome2_icon_cache_update; }
