{ haskellPackages ? (import <nixpkgs> {}).haskellPackages_ghc783
, pkgs ? (import <nixpkgs> {})
, autoconf ? pkgs.autoconf
, libxslt ? pkgs.libxslt
, libxml2 ? pkgs.libxml2
, texLive ? pkgs.texLive
, haddockLibrary ? (import /home/shana/programming/haddock/haddock-library
    { haskellPackages = haskellPackages; })
}:

haskellPackages.cabal.mkDerivation (self: {
  pname = "haddock";
  version = "2.15.0";
  src = /home/shana/programming/haddock;
  buildDepends = with haskellPackages;
                   [ Cabal deepseq filepath ghcPaths xhtml haddockLibrary
                     autoconf libxslt libxml2 texLive
                   ];
  testDepends = with haskellPackages; [ Cabal deepseq filepath hspec QuickCheck ];
  isLibrary = true;
  isExecutable = true;
  enableSplitObjs = false;
  noHaddock = false;
  doCheck = true;
  # extraConfigureFlags = [ "--ghc-option=-fprof-auto"
  #                         "--ghc-option=-rtsopts"
  #                         "--enable-executable-profiling"
  #                       ];
})