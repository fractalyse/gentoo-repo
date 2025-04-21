# Copyright Fractalyse
# Distributed under the GPL-2
EAPI=8

DESCRIPTION="Schémas additionnels pour OpenLDAP"
HOMEPAGE="https://github.com/fractalyse/openldap-opencube-schema"
SRC_URI="https://github.com/fractalyse/openldap-opencube-schema/archive/v0.2.tar.gz -> openldap-schema-0.2.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="net-nds/openldap"
RDEPEND="${DEPEND}"

S="${WORKDIR}/openldap-opencube-schema-0.2"

src_install() {
    insinto /etc/openldap/schema
    doins *.ldif
}
