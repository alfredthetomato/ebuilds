# Copyright 2015 alfredthetomato
# Distributed under the terms of the GNU General Public License v3 or later

EAPI=5

inherit git-r3

DESCRIPTION="Numix is an modern flat theme with a combination of elements"
HOMEPAGE="https://numixproject.org/"
EGIT_REPO_URI="git://github.com/shimmerproject/Numix.git"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64 ~ppc"
IUSE="unrounded"

DEPEND=""
RDEPEND="${DEPEND}"

src_prepare() {
    if use unrounded; then
        sed -i 's/border-radius: 2px;/border-radius: 0px;/g' gtk-3.0/gtk-widgets.css
        sed -i 's/border-top-right-radius: 2px;/border-top-right-radius: 0px;/g' gtk-3.0/gtk-widgets.css
        sed -i 's/border-top-left-radius: 2px;/border-top-left-radius: 0px;/g' gtk-3.0/gtk-widgets.css
        sed -i 's/border-bottom-right-radius: 2px;/border-bottom-right-radius: 0px;/g' gtk-3.0/gtk-widgets.css
        sed -i 's/border-bottom-left-radius: 2px;/border-bottom-left-radius: 0px;/g' gtk-3.0/gtk-widgets.css
        sed -i 's/border-radius: 2px 0 0 2px;/border-radius 0 0 0 0;/g' gtk-3.0/gtk-widgets.css
        sed -i 's/border-radius: 0 2px 2px 0;/border-radius 0 0 0 0;/g' gtk-3.0/gtk-widgets.css
        sed -i 's/border-radius: 2px 2px 0 0;/border-radius 0 0 0 0;/g' gtk-3.0/gtk-widgets.css
        sed -i 's/border-radius: 0 0 2px 2px;/border-radius 0 0 0 0;/g' gtk-3.0/gtk-widgets.css
        sed -i 's/roundness = 2/roundness = 0/g' gtk-2.0/gtkrc
    fi
}

src_install() {
	insinto "/usr/share/themes/Numix"
    rm "${S}/LICENSE" # we don't need extra copies of the licence.
	rm "${S}/README.md"
    doins -r *
}
