# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python2_7 python3_3 python3_4 python3_5 )

inherit distutils-r1

DESCRIPTION="A CLI interface to Jinja2"
HOMEPAGE="https://github.com/mattrobenolt/jinja2-cli"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"
IUSE="yaml xml toml"

CDEPEND="
	yaml? (
		dev-python/pyyaml[${PYTHON_USEDEP}]
	)
	xml? (
		dev-python/xmltodict[${PYTHON_USEDEP}]
	)
	toml? (
		dev-python/toml[${PYTHON_USEDEP}]
	)
	dev-python/jinja[${PYTHON_USEDEP}]
"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
"
RDEPEND="${CDEPEND}"

python_prepare_all() {
	sed -e s":\(tests_require=\):#\1:" -e s"/'tests':.*//" -i setup.py || die
	rm -rf tests || die
	distutils-r1_python_prepare_all
}

python_install_all() {
	distutils-r1_python_install_all
}
