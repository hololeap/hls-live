# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: -pedantic

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal git-r3

DESCRIPTION="Haskell Language Server API for plugin communication"
HOMEPAGE="https://github.com/haskell/haskell-language-server/hls-plugin-api"
EGIT_REPO_URI="https://github.com/haskell/haskell-language-server.git"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS=""

S="${S}/${PN}"

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/diff:=[profile?]
	dev-haskell/hashable:=[profile?]
	>=dev-haskell/haskell-lsp-0.23:=[profile?] <dev-haskell/haskell-lsp-0.24:=[profile?]
	dev-haskell/hslogger:=[profile?]
	dev-haskell/lens:=[profile?]
	>=dev-haskell/regex-tdfa-1.3.1.0:=[profile?]
	>=dev-haskell/shake-0.17.5:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-pedantic
}
