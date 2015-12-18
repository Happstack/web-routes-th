{ mkDerivation, base, hspec, HUnit, parsec, QuickCheck, split
, stdenv, template-haskell, text, web-routes
}:
mkDerivation {
  pname = "web-routes-th";
  version = "0.22.4";
  src = ./.;
  libraryHaskellDepends = [
    base parsec split template-haskell text web-routes
  ];
  testHaskellDepends = [ base hspec HUnit QuickCheck web-routes ];
  description = "Support for deriving PathInfo using Template Haskell";
  license = stdenv.lib.licenses.bsd3;
}
