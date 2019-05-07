# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python2_7 python3_3 python3_4 python3_5 python3_6 )

inherit distutils-r1

DESCRIPTION="AWS SAM CLI is a CLI tool for local development and testing of Serverless applications"
HOMEPAGE="https://github.com/awslabs/aws-sam-cli"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

CDEPEND="
	>=dev-python/six-1.11.0[${PYTHON_USEDEP}]
	>=dev-python/chevron-0.12[${PYTHON_USEDEP}]
	>=dev-python/click-6.7[${PYTHON_USEDEP}]
	>=dev-python/flask-1.0.2[${PYTHON_USEDEP}]
	>=dev-python/boto3-1.9.56[${PYTHON_USEDEP}]
	>=dev-python/pyyaml-3.12[${PYTHON_USEDEP}]
	>=dev-python/cookiecutter-1.6.0[${PYTHON_USEDEP}]
	>=dev-python/aws-sam-translator-1.10.0[${PYTHON_USEDEP}]
	>=dev-python/docker-py-3.3.0[${PYTHON_USEDEP}]
	>=dev-python/dateparser-0.7[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.6.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.20.1[${PYTHON_USEDEP}]
	>=dev-python/aws-lambda-builders-0.3.0[${PYTHON_USEDEP}]
	=dev-python/serverlessrepo-0.1.8[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '>=dev-python/enum34-1.1.6[${PYTHON_USEDEP}]' python2_7)
	$(python_gen_cond_dep '>=dev-python/pathlib2-2.3.2[${PYTHON_USEDEP}]' python2_7)
"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
"
RDEPEND="${CDEPEND}"

python_prepare_all() {
	sed -e s"/requests==/requests>=/" -e s"/~=/>=/" -i requirements/base.txt || die
	distutils-r1_python_prepare_all
}

python_install_all() {
	distutils-r1_python_install_all
}
