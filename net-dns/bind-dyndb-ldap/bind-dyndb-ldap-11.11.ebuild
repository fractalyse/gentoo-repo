# Copyright Fractalyse
# Distributed under the GPL-2
EAPI=7

DESCRIPTION="BIND DynDB module for OpenLDAP (bind-dyndb-ldap)"
HOMEPAGE="https://pagure.io/bind-dyndb-ldap"
SRC_URI="https://releases.pagure.org/bind-dyndb-ldap/bind-dyndb-ldap-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

# Dépendances requises pour la compilation et l'exécution.
DEPEND="
    dev-build/autoconf
    dev-build/automake
    dev-build/libtool
    dev-build/make
    net-dns/bind
"
#    dev-libs/openssl

RDEPEND="${DEPEND}"

src_unpack() {
    default
}

src_configure() {
    # Configure le module en spécifiant les chemins des bibliothèques LDAP et OpenSSL.
    econf --libdir=/usr/lib64/
}

src_compile() {
    emake
}

src_install() {
    default
}
