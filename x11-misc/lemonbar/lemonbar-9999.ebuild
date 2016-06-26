# Copyright 2015-2016 alfredthetomato
# Distributed under the terms of the GNU General Public License v3 or later

EAPI=5

inherit git-r3

DESCRIPTION="A lightweight xcb based bar by LemonBoy"
HOMEPAGE="https://github.com/LemonBoy/bar"

EGIT_REPO_URI="
	xft? ( git://github.com/krypt-n/bar.git )
	!xft? ( git://github.com/LemonBoy/bar.git )"
EGIT_BRANCH="xft-port"

LICENSE="MIT-with-advertising"
SLOT="0"
KEYWORDS="~amd64 ~ppc"
IUSE="xft"

DEPEND="
	x11-libs/libxcb
	xft? (
	x11-libs/libXft
	x11-libs/libX11
	)
"
RDEPEND="${DEPEND}"

src_install() {
	emake DESTDIR="${D}" install
}
