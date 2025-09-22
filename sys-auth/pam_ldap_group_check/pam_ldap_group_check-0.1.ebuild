# Copyright Fractalyse 2025

EAPI=8

DESCRIPTION="PAM module to allow/deny SSH login based on LDAP group membership and min uid"
HOMEPAGE="https://example.com"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="sys-libs/pam"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${PN}"

src_unpack() {
    mkdir -p "${S}"
    cp "${FILESDIR}/pam_ldapgroupcheck.c" "${S}/"
}

src_compile() {
    emake CC="$(tc-getCC)" \
        CFLAGS="${CFLAGS} -fPIC -Wall -Wextra -O2 -fno-stack-protector" \
        LDFLAGS="${LDFLAGS}" \
        pam_ldapgroupcheck.so
}

src_install() {
    exeinto /lib/security
    doexe pam_ldapgroupcheck.so

    dodoc "${FILESDIR}/README.md"
}
