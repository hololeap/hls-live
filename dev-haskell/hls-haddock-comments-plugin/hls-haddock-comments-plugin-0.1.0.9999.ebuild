# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal git-r3

DESCRIPTION="Haddock comments plugin for Haskell Language Server"
HOMEPAGE="https://github.com/haskell/haskell-language-server"
EGIT_REPO_URI="https://github.com/haskell/haskell-language-server.git"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS=""

S="${S}/plugins/${PN}"

RDEPEND="dev-haskell/ghc-exactprint:=[profile?]
	~dev-haskell/ghcide-0.7.2.9999:=[profile?]
	dev-haskell/haskell-lsp-types:=[profile?]
	~dev-haskell/hls-plugin-api-0.6.0.9999:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
"
