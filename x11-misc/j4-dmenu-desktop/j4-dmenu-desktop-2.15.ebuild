# Copyright 2016 alfredthetomato
# Distributed under the terms of the GNU General Public License v3 or later

EAPI=6

inherit cmake-utils

DESCRIPTION="A rewrite of i3-dmenu-desktop, which is much faster"
HOMEPAGE="https://github.com/enkore/j4-dmenu-desktop"
SRC_URI="https://github.com/enkore/j4-dmenu-desktop/archive/r${PV}.tar.gz -> ${PN}-r${PV}.tar.gz"

S="${WORKDIR}/${PN}-r${PV}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="x11-misc/dmenu"

PATCHES=("${FILESDIR}/${PN}-2.15-correct-catch-version.patch")
