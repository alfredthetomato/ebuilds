# Copyright 2015 alfredthetomato
# Distributed under the terms of the GNU General Public License v3 or later

EAPI=5

inherit git-2

DESCRIPTION="A simple tool to output the current screen resolution on stdout"
HOMEPAGE="https://github.com/baskerville/sres"
EGIT_REPO_URI="git://github.com/baskerville/sres.git"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="~amd64 ~ppc"
IUSE=""

DEPEND="
	x11-libs/libxcb"
RDEPEND="${DEPEND}"

src_install() {
	emake DESTDIR="${D}" install
}
