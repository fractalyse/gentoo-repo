# Copyright Fractalyse
# Distributed under the GPL-2
EAPI=8

DESCRIPTION="Un métapaquet qui regroupe plusieurs applications utiles"
HOMEPAGE="https://github.com/fractalyse"
LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64 x86 arm64"
IUSE=""

RDEPEND="
   dev-libs/cyrus-sasl[ssl]
   mail-filter/amavisd-new[clamav,ldap,spamassassin]
   mail-filter/opendkim[ldap,sasl,ssl]
   mail-filter/opendmarc
   mail-filter/postfix-opencube-policy
   mail-filter/spamassassin[ipv6,ldap,ssl]
   mail-mta/postfix[dovecot-sasl,ldap,sasl,ssl]
   net-dns/bind[caps,gssapi]
   net-dns/bind-dyndb-ldap
   net-nds/openldap[crypt,experimental,overlays,sasl,ssl]
   net-nds/openldap-opencube-schema
   net-mail/dovecot[ldap]
"

DEPEND=""
BDEPEND=""
