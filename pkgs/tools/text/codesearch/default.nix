# This file was generated by go2nix.
{ stdenv, buildGoPackage, fetchgit, fetchhg, fetchbzr, fetchsvn }:

buildGoPackage rec {
  name = "codesearch-${version}";
  version = "20150717-${stdenv.lib.strings.substring 0 7 rev}";
  rev = "a45d81b686e85d01f2838439deaf72126ccd5a96";

  goPackagePath = "github.com/google/codesearch";

  src = fetchgit {
    inherit rev;
    url = "https://github.com/google/codesearch";
    sha256 = "12bv3yz0l3bmsxbasfgv7scm9j719ch6pmlspv4bd4ix7wjpyhny";
  };

  goDeps = ./deps.nix;

  meta = {
    description = "Fast, indexed regexp search over large file trees";
    homepage = https://github.com/google/codesearch;
    license = [ stdenv.lib.licenses.bsd3 ];
    maintainers = [ stdenv.lib.maintainers.bennofs ];
    platforms = stdenv.lib.platforms.unix;
  };
}
