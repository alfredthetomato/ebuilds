# Copyright 2015 alfredthetomato
# Distributed under the terms of the GNU General Public License v3 or later

EAPI=5

inherit git-r3

DESCRIPTION="A simple tool to output the X window title"
HOMEPAGE="https://github.com/baskerville/xtitle"
EGIT_REPO_URI="git://github.com/baskerville/xtitle.git"
EGIT_COMMIT="${PV}"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="~amd64 ~ppc"
IUSE=""

DEPEND="
	x11-libs/libxcb
	x11-libs/xcb-util
	x11-libs/xcb-util-wm"

RDEPEND="${DEPEND}"

src_install() {
	emake DESTDIR="${D}" install
}
