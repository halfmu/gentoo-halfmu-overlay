# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python2_7 python3_3 python3_4 python3_5 python3_6 )

inherit distutils-r1

DESCRIPTION="A utility for managing secrets in the cloud using AWS KMS and DynamoDB"
HOMEPAGE="https://github.com/fugue/credstash"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"
IUSE="yaml"

CDEPEND="
	yaml? (
		>=dev-python/pyyaml-3.10[${PYTHON_USEDEP}]
	)
	>=dev-python/cryptography-2.1[${PYTHON_USEDEP}]
	>=dev-python/boto3-1.1.1[${PYTHON_USEDEP}]
	>=dev-python/nose-1.3.6[${PYTHON_USEDEP}]
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
