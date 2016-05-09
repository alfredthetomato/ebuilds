# Copyright 2015-2016 alfredthetomato
# Distributed under the terms of the GNU General Public License v3 or later

EAPI=5

inherit git-r3 gnome2-utils

DESCRIPTION="An icon theme for desktops, Lüv is the spirtual successor to Flattr."
HOMEPAGE="https://github.com/NitruxSA/luv-icon-theme"
EGIT_REPO_URI="git://github.com/NitruxSA/luv-icon-theme.git"

RESTRICT="binchecks strip"

LICENSE="CC-BY-SA-4.0"
SLOT="0"
KEYWORDS="~amd64 ~ppc"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	dodir /usr/share/icons/
	cp -r "${S}/Lüv" "${D}/usr/share/icons/"
	cp -r "${S}/Lüv Dark" "${D}/usr/share/icons/"
}

# Gnomey cache stuff
pkg_preinst() { gnome2_icon_savelist; }
pkg_postinst() { gnome2_icon_cache_update; }
pkg_postrm() { gnome2_icon_cache_update; }
