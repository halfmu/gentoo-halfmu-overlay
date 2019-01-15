# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python2_7 python3_3 python3_4 python3_5 python3_6 )

inherit distutils-r1

DESCRIPTION="AWS SAM Translator is a library that transform SAM templates into AWS CloudFormation templates"
HOMEPAGE="https://github.com/awslabs/serverless-application-model"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

CDEPEND="
	>=dev-python/boto3-1.5[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '>=dev-python/enum34-1.1[${PYTHON_USEDEP}]' python2_7)
	>=dev-python/jsonschema-2.6.0[${PYTHON_USEDEP}]
	>=dev-python/six-1.11.0[${PYTHON_USEDEP}]
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
