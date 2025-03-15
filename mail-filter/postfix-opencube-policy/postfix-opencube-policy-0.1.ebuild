# Définition de l'EAPI (version de l'API utilisée par Portage)
EAPI=8

DESCRIPTION="Postfix sender policy script which allows user to send email from their aliases"
HOMEPAGE="https://github.com/fractalyse/postfix-opencube-policy"
SRC_URI="https://github.com/fractalyse/postfix-opencube-policy/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="dev-lang/python:3.12
	 mail-mta/postfix"
DEPEND="${RDEPEND}"

S="${WORKDIR}/${PN}-${PV}"

src_install() {
    exeinto /etc/postfix
    doexe ${S}/custom_policy.py

    insinto /etc/postfix/postfix-files.d
    doins ${S}/sender_login_maps

    # Facultatif : installation avec pip si nécessaire
    # pip install --root="${D}" --prefix=/usr "${S}"
}

pkg_postinst() {
    ewarn "Installation complete please configure /etc/postfix/postfix-files.d/sender_login_maps"
}
