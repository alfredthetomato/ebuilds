# Copyright 2015 alfredthetomato
# Distributed under the terms of the GNU General Public License v3 or later

EAPI=5

inherit git-r3

DESCRIPTION="A lightweight xcb based bar without"
HOMEPAGE="https://github.com/LemonBoy/bar"
EGIT_REPO_URI="git://github.com/LemonBoy/bar.git"

LICENSE="MIT-with-advertising"
SLOT="0"
KEYWORDS="~amd64 ~ppc"
IUSE=""

DEPEND="
	x11-libs/libxcb"
RDEPEND="${DEPEND}"

src_install() {
	emake DESTDIR="${D}" install
}
