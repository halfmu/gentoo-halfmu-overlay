# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python2_7 python3_3 python3_4 python3_5 python3_6 )

inherit distutils-r1

DESCRIPTION="A command-line utility that creates projects from project templates, e.g. creating a Python package project from a Python package project template."
HOMEPAGE="https://github.com/audreyr/cookiecutter"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

CDEPEND="
	>=dev-python/future-0.15.2[${PYTHON_USEDEP}]
	>=dev-python/binaryornot-0.2.0[${PYTHON_USEDEP}]
	>=dev-python/jinja-2.7[${PYTHON_USEDEP}]
	>=dev-python/click-5.0[${PYTHON_USEDEP}]
	>=dev-python/whichcraft-0.4.0[${PYTHON_USEDEP}]
	>=dev-python/poyo-0.1.0[${PYTHON_USEDEP}]
	>=dev-python/jinja2-time-0.1.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.18.0[${PYTHON_USEDEP}]
"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
"
RDEPEND="${CDEPEND}"

python_prepare_all() {
	distutils-r1_python_prepare_all
}

python_install_all() {
	distutils-r1_python_install_all
}
