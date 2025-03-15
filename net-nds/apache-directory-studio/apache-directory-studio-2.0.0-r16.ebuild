EAPI=8

LICENSE="Apache-2.0"
SLOT="m16"
KEYWORDS="amd64"
DESCRIPTION="Eclipse-based LDAP browser and directory client"
HOMEPAGE="https://directory.apache.org/studio/"
SRC_URI="https://archive.apache.org/dist/directory/studio/2.0.0.v20210213-M16/ApacheDirectoryStudio-2.0.0.v20210213-M16-linux.gtk.x86_64.tar.gz -> ${PN}-${PV}-${SLOT}.tar.gz"

IUSE=""

RDEPEND=">=dev-java/openjdk-bin-11"
DEPEND="${RDEPEND}"

S="${WORKDIR}/ApacheDirectoryStudio"

src_install() {
    insinto /opt/apache-directory-studio-${SLOT}
    doins -r *
    fperms +x /opt/apache-directory-studio-${SLOT}/ApacheDirectoryStudio
    dosym /opt/apache-directory-studio-${SLOT}/ApacheDirectoryStudio /usr/bin/apache-directory-studio-${SLOT}
}

pkg_postrm() {
       rmdir /opt/apache-directory-studio-${SLOT}
}
