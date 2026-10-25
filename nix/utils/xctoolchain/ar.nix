{
  pkgs ? import ../default/pkgs.nix,
}:

# autoconf's configure looks for a plain `ar`/`ranlib` on PATH when
# cross-compiling (the host-prefixed lookups fail in the nix sandbox).
# libass >= 0.17.5 builds a noinst static archive (libass_internal.la)
# which cannot be created without them.
pkgs.runCommand "mk-xctoolchain-ar" { } ''
  mkdir -p $out/bin
  ln -s ${pkgs.darwin.xcode}/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ar $out/bin/ar
  ln -s ${pkgs.darwin.xcode}/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib $out/bin/ranlib
''
