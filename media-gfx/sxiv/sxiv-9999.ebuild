# Copyright 2015 alfredthetomato
# Distributed under the terms of the GNU General Public License v3 or later

EAPI=5

inherit git-r3

DESCRIPTION="a Simple X Image Viewer"
HOMEPAGE="https://github.com/muennich/sxiv"
if use xft; then
EGIT_REPO_URI="git://github.com/baskerville/sxiv.git"
EGIT_BRANCH="xft"
fi
use xft || EGIT_REPO_URI="git://github.com/muennich/sxiv.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc"
IUSE="xft"

DEPEND="
	sys-libs/glibc
	media-libs/libexif
	media-libs/giflib
	media-libs/imlib2[X]
	x11-libs/libX11
	x11-proto/xproto
	xft? (
	x11-libs/libXft
	)
"
RDEPEND="${DEPEND}"

src_install() {
	emake DESTDIR="${D}" INSTALL
}
