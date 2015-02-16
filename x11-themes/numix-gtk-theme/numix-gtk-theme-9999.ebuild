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
IUSE="solarisiert unrounded"

DEPEND=""
RDEPEND="${DEPEND}"

src_prepare() {
    if use solarisiert; then
        sed -i 's/dedede/eee8d5/g' */gtk*
        sed -i 's/555555/586e75/g' */gtk*
        sed -i 's/f9f9f9/fdf6e3/g' */gtk*
        sed -i 's/333333/073642/g' */gtk*
        sed -i 's/d64937/6c71c4/g' */gtk* # This is the accent colour I think...
        sed -i 's/d64937/6c71c4/g' gtk-3.0/assets/*.svg
        sed -i 's/f9f9f9/fdf6e3/g' */gtk*
        sed -i 's/f9f9f9/fdf6e3/g' gtk-3.0/assets/*.svg
        sed -i 's/2d2d2d/002b36/g' */gtk*
        sed -i 's/dcdcdc/eee8d5/g' */gtk*
        sed -i 's/58, 135, 173/38, 110, 210/g' */gtk*
        sed -i 's/217, 237, 247/217, 237, 247/g' */gtk*
        sed -i 's/192, 152, 83/181, 137, 0/g' */gtk*
        sed -i 's/252, 248, 227/252, 248, 227/g' */gtk*
        sed -i 's/214, 73, 55/203, 75, 22/g' */gtk*
        sed -i 's/252, 229, 213/252, 229, 213/g' */gtk*
        sed -i 's/185, 74, 72/242, 222, 222/g' */gtk*
        sed -i 's/fc6f5d/d33682/g' */gtk*
        sed -i 's/53a93f/859900/g' */gtk*
        sed -i 's/f57900/cb4b16/g' */gtk*
        sed -i 's/cc0000/dc322f/g' */gtk*
        sed -i 's/#aaa"/#073642"/g' gtk-3.0/assets/*.svg
        sed -i 's/d3d3d3/93a1a1/g' gtk-3.0/assets/*.svg
        sed -i 's/393939/586e75/g' gtk-3.0/assets/*.svg
        sed -i 's/1f1f1f/073642/g' gtk-3.0/assets/*.svg
    fi
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
	if use solarisiert; then
		insinto "/usr/share/themes/Numix-Solarised"
	fi
	if ! use solarisiert; then
		insinto "/usr/share/themes/Numix"
	fi
    rm "${S}/LICENSE" # we don't need extra copies of the licence.
	rm "${S}/README.md"
    doins -r *
}
