# Copyright 2015--2017 alfredthetomato
# Distributed under the terms of the GNU General Public License v3 or later

EAPI=6

DESCRIPTION="A simple tool to output the X window title"
HOMEPAGE="https://github.com/baskerville/xtitle"
SRC_URI="https://github.com/baskerville/xtitle/archive/${PV}.tar.gz"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	x11-libs/libxcb
	x11-libs/xcb-util
	x11-libs/xcb-util-wm"

RDEPEND="${DEPEND}"
