EAPI=8

DESCRIPTION="Schémas additionnels pour OpenLDAP"
HOMEPAGE="https://github.com/fractalyse/openldap-opencube-schema"
SRC_URI="https://github.com/fractalyse/openldap-opencube-schema/archive/v0.1.tar.gz -> openldap-schema-0.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="net-nds/openldap"
RDEPEND="${DEPEND}"

S="${WORKDIR}/openldap-opencube-schema-0.1"

src_install() {
    insinto /etc/openldap/schema
    #doins *.schema
    doins *.ldif
}
