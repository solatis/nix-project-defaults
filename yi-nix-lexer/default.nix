# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, hnix, text, yi, yiLanguage }:

cabal.mkDerivation (self: {
  pname = "yi-nix-lexer";
  version = "0.1.0.0";
  src = /home/shana/programming/yi-nix-lexer;
  buildDepends = [ hnix text yi yiLanguage ];
  meta = {
    homepage = "https://github.com/Fuuzetsu/yi-nix-lexer";
    description = "Yi lexer for nix files";
    license = self.stdenv.lib.licenses.gpl3;
    platforms = self.ghc.meta.platforms;
  };
})
