# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

# Tests are failing in multiple places, including the message
# "Timed out waiting to receive a message from the server."
CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite
inherit haskell-cabal git-r3
RESTRICT="test" # requires network access

DESCRIPTION="The core of an IDE"
HOMEPAGE="https://github.com/haskell/ghcide#readme"
EGIT_REPO_URI="https://github.com/haskell/haskell-language-server.git"

S="${S}/${PN}"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS=""
IUSE="ghc-lib bench-exe executable test-exe"
REQUIRED_USE="executable? ( !ghc-lib )" # test? ( !ghc-lib executable test-exe )

PATCHES=( "${FILESDIR}/${P}-add-exe-flags.patch" )

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/async:=[profile?]
	dev-haskell/bytestring-encoding:=[profile?]
	dev-haskell/case-insensitive:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/dlist:=[profile?]
	dev-haskell/diff:=[profile?]
	>=dev-haskell/extra-1.7.4:=[profile?]
	dev-haskell/fingertree:=[profile?]
	dev-haskell/fuzzy:=[profile?]
	~dev-haskell/ghc-exactprint-0.6.3.9999:=[profile?]
	dev-haskell/glob:=[profile?]
	>=dev-haskell/haddock-library-1.8:=[profile?]
	dev-haskell/hashable:=[profile?]
	>=dev-haskell/haskell-lsp-0.23:=[profile?] <dev-haskell/haskell-lsp-0.24:=[profile?]
	>=dev-haskell/haskell-lsp-types-0.23:=[profile?] <dev-haskell/haskell-lsp-types-0.24:=[profile?]
	>=dev-haskell/heapsize-0.3:=[profile?] <dev-haskell/heapsize-0.4:=[profile?]
	~dev-haskell/hie-compat-0.1.0.9999:=[profile?,ghc-lib?]
	~dev-haskell/hiedb-0.3.0.1
	~dev-haskell/hls-plugin-api-0.6.0.9999:=[profile?]
	dev-haskell/hslogger:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/network-uri:=[profile?]
	>=dev-haskell/opentelemetry-0.6.1:=[profile?]
	dev-haskell/parallel:=[profile?]
	dev-haskell/prettyprinter:=[profile?]
	dev-haskell/prettyprinter-ansi-terminal:=[profile?]
	>=dev-haskell/regex-tdfa-1.3.1.0:=[profile?]
	dev-haskell/retrie:=[profile?]
	dev-haskell/rope-utf16-splay:=[profile?]
	dev-haskell/safe:=[profile?]
	dev-haskell/safe-exceptions:=[profile?]
	>=dev-haskell/shake-0.18.4:=[profile?]
	dev-haskell/sorted-list:=[profile?]
	dev-haskell/sqlite-simple:=[profile?]
	dev-haskell/stm:=[profile?]
	dev-haskell/syb:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/unordered-containers-0.2.10.0:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-8.6:=
	bench-exe? ( >=dev-haskell/lsp-test-0.12:=[profile?] <dev-haskell/lsp-test-0.13:=[profile?]
			dev-haskell/optparse-applicative:=[profile?] )
	executable? ( dev-haskell/gitrev:=[profile?]
			dev-haskell/optparse-applicative:=[profile?] )
	ghc-lib? ( >=dev-haskell/ghc-lib-8.8:=[profile?]
			>=dev-haskell/ghc-lib-parser-8.8:=[profile?] )
	!ghc-lib? ( >=dev-haskell/base16-bytestring-0.1.1:=[profile?] <dev-haskell/base16-bytestring-0.2:=[profile?]
			>=dev-haskell/cryptohash-sha1-0.11.100:=[profile?] <dev-haskell/cryptohash-sha1-0.12:=[profile?]
			>=dev-haskell/ghc-check-0.5.0.1:=[profile?]
			dev-haskell/ghc-paths:=[profile?]
			>=dev-haskell/hie-bios-0.7.1:=[profile?] <dev-haskell/hie-bios-0.8.0:=[profile?]
			>=dev-haskell/implicit-hie-cradle-0.3.0.2:=[profile?] <dev-haskell/implicit-hie-cradle-0.4:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1"
#	test? ( dev-haskell/ghc-typelits-knownnat
#				>=dev-haskell/lsp-test-0.12 <dev-haskell/lsp-test-0.13
#				dev-haskell/quickcheck
#				dev-haskell/quickcheck-instances
#				dev-haskell/tasty
#				dev-haskell/tasty-expected-failure
#				dev-haskell/tasty-hunit
#				dev-haskell/tasty-quickcheck
#				dev-haskell/tasty-rerun )

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag ghc-lib ghc-lib) \
		$(cabal_flag bench-exe bench-exe) \
		$(cabal_flag executable executable) \
		$(cabal_flag test-exe test-exe)
}
