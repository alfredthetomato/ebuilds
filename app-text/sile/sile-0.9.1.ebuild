# Copyright 2015 alfredthetomato
# Distributed under the terms of the GNU General Public License v3 or later

EAPI=5

inherit git-r3

DESCRIPTION="SILE is a typesetting system to produce beautiful printed documents"
HOMEPAGE="http://sile-typesetter.org/"
EGIT_REPO_URI="git://github.com/simoncozens/sile.git"
EGIT_COMMIT="${PV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc"
IUSE=""

DEPEND=">=dev-lang/lua-5.1
		dev-lua/lgi
        dev-lua/lpeg
		dev-lua/luaexpat
		media-libs/harfbuzz
		media-libs/fontconfig
		media-libs/freetype"
RDEPEND="${DEPEND}"

src_install() {
	emake DESTDIR="${D}" install
}
