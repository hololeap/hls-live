# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: class:hls_plugins_class,eval:hls_plugins_eval,hlint:hls_plugins_hlint,haddockcomments:hls_plugins_haddock-comments,importlens:hls_plugins_import-lens,modulename:hls_plugins_module-name,pragmas:hls_plugins_pragmas,retrie:hls_plugins_retrie,splice:hls_plugins_splice,tactic:hls_plugins_tactic,brittany:hls_formatters_brittany,floskell:hls_formatters_floskell,fourmolu:hls_formatters_fourmolu,ormolu:hls_formatters_ormolu,stylishhaskell:hls_formatters_stylish-haskell,-pedantic,-all-plugins,-all-formatters

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite
inherit haskell-cabal git-r3
RESTRICT="test" # missing files

DESCRIPTION="LSP server for GHC"
HOMEPAGE="https://github.com/haskell/haskell-language-server#readme"
EGIT_REPO_URI="https://github.com/haskell/haskell-language-server.git"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS=""
IUSE_HLS_PLUGINS="
	+hls_plugins_class
	+hls_plugins_eval
	+hls_plugins_hlint
	+hls_plugins_haddock-comments
	+hls_plugins_import-lens
	+hls_plugins_module-name
	+hls_plugins_pragmas
	+hls_plugins_retrie
	+hls_plugins_splice
	+hls_plugins_tactic
"

IUSE_HLS_FORMATTERS="
	+hls_formatters_brittany
	+hls_formatters_floskell
	+hls_formatters_fourmolu
	+hls_formatters_ormolu
	+hls_formatters_stylish-haskell
"

IUSE="+agpl ${IUSE_HLS_PLUGINS} ${IUSE_HLS_FORMATTERS}"
REQUIRED_USE="hls_formatters_brittany? ( agpl )"

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/extra:=[profile?]
	dev-haskell/ghc-paths:=[profile?]
	~dev-haskell/ghcide-0.7.2.9999:=[profile?]
	dev-haskell/gitrev:=[profile?]
	dev-haskell/hashable:=[profile?]
	>=dev-haskell/haskell-lsp-0.23:=[profile?] <dev-haskell/haskell-lsp-0.24:=[profile?]
	dev-haskell/hie-bios:=[profile?]
	~dev-haskell/hls-plugin-api-0.6.0.9999:=[profile?]
	dev-haskell/hslogger:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	dev-haskell/optparse-simple:=[profile?]
	dev-haskell/regex-tdfa:=[profile?]
	dev-haskell/safe-exceptions:=[profile?]
	>=dev-haskell/shake-0.17.5:=[profile?]
	dev-haskell/temporary:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/with-utf8:=[profile?]
	>=dev-lang/ghc-8.6.3:=
	hls_plugins_class? ( ~dev-haskell/hls-class-plugin-0.1.0.9999:=[profile?] )
	hls_plugins_eval? ( ~dev-haskell/hls-eval-plugin-0.1.0.9999:=[profile?] )
	hls_plugins_haddock-comments? ( ~dev-haskell/hls-haddock-comments-plugin-0.1.0.9999:=[profile?] )
	hls_plugins_hlint? ( ~dev-haskell/hls-hlint-plugin-0.1.0.9999:=[profile?] )
	hls_plugins_import-lens? ( ~dev-haskell/hls-explicit-imports-plugin-0.1.0.9999:=[profile?] )
	hls_plugins_pragmas? ( dev-haskell/fuzzy:=[profile?] )
	hls_plugins_retrie? ( ~dev-haskell/hls-retrie-plugin-0.1.0.9999:=[profile?] )
	hls_plugins_splice? ( ~dev-haskell/hls-splice-plugin-0.1.0.9999:=[profile?] )
	hls_plugins_tactic? ( ~dev-haskell/hls-tactics-plugin-0.5.1.9999:=[profile?] )
	hls_formatters_brittany? ( >=dev-util/brittany-0.13.1.0:=[profile?] )
	hls_formatters_floskell? ( >=dev-haskell/floskell-0.10:=[profile?] <dev-haskell/floskell-0.11:=[profile?] )
	hls_formatters_fourmolu? ( >=dev-haskell/fourmolu-0.3:=[profile?] <dev-haskell/fourmolu-0.4:=[profile?] )
	hls_formatters_ormolu? ( >=dev-haskell/ormolu-0.1.2:=[profile?] <dev-haskell/ormolu-0.2:=[profile?] )
	hls_formatters_stylish-haskell? ( >=dev-haskell/stylish-haskell-0.12:=[profile?] <dev-haskell/stylish-haskell-0.13:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1"
#	test? ( dev-haskell/blaze-markup
#		dev-haskell/hspec
#		dev-haskell/hspec-core
#		dev-haskell/hspec-expectations
#		>=dev-haskell/lsp-test-0.11.0.6
#		dev-haskell/stm
#		dev-haskell/tasty
#		>=dev-haskell/tasty-ant-xml-1.1.6
#		dev-haskell/tasty-expected-failure
#		dev-haskell/tasty-golden
#		dev-haskell/tasty-hunit
#		dev-haskell/tasty-rerun
#		dev-haskell/yaml )"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag agpl agpl) \
		$(cabal_flag hls_formatters_brittany brittany) \
		$(cabal_flag hls_plugins_class class) \
		$(cabal_flag hls_plugins_eval eval) \
		$(cabal_flag hls_formatters_floskell floskell) \
		$(cabal_flag hls_formatters_fourmolu fourmolu) \
		$(cabal_flag hls_plugins_haddock-comments haddockcomments) \
		$(cabal_flag hls_plugins_hlint hlint) \
		$(cabal_flag hls_plugins_import-lens importlens) \
		$(cabal_flag hls_plugins_module-name modulename) \
		$(cabal_flag hls_formatters_ormolu ormolu) \
		$(cabal_flag hls_plugins_pragmas pragmas) \
		$(cabal_flag hls_plugins_retrie retrie) \
		$(cabal_flag hls_plugins_splice splice) \
		$(cabal_flag hls_formatters_stylish-haskell stylishhaskell) \
		$(cabal_flag hls_plugins_tactic tactic) \
		--flag=-pedantic \
		--flag=-all-plugins \
		--flag=-all-formatters
}
