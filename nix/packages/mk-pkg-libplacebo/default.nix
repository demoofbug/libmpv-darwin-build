{
  pkgs ? import ../../utils/default/pkgs.nix,
  os ? import ../../utils/default/os.nix,
  arch ? pkgs.callPackage ../../utils/default/arch.nix { },
}:

let
  name = "libplacebo";
  packageLock = (import ../../../packages.lock.nix).${name};
  inherit (packageLock) version;

  callPackage = pkgs.lib.callPackageWith { inherit pkgs os arch; };
  nativeFile = callPackage ../../utils/native-file/default.nix { };
  crossFile = callPackage ../../utils/cross-file/default.nix { };
  vulkanHeaders = callPackage ../mk-pkg-vulkan-headers/default.nix { };

  pname = import ../../utils/name/package.nix name;
  src = callPackage ../../utils/fetch-tarball/default.nix {
    name = "${pname}-source-${version}";
    inherit (packageLock) url sha256;
  };
in

pkgs.stdenvNoCC.mkDerivation {
  name = "${pname}-${os}-${arch}-${version}";
  pname = pname;
  inherit version;
  inherit src;
  dontUnpack = true;
  enableParallelBuilding = true;
  nativeBuildInputs = [
    pkgs.meson
    pkgs.ninja
    pkgs.pkg-config
    # glsl_preproc (run over renderer.c/shaders.c) imports jinja2, and the
    # glad2 generator produces the GL headers at configure time; the
    # corresponding 3rdparty/ submodules are empty in the release tarball.
    # Listed as flat python3Packages (not withPackages) so their setup hooks
    # export site-packages via PYTHONPATH: meson resolves find_installation()
    # to the bare interpreter of the first python3 on PATH, which cannot see
    # packages wrapped inside a python3.withPackages env.
    pkgs.python3Packages.jinja2
    pkgs.python3Packages.glad2
  ];
  buildInputs = [
    vulkanHeaders
  ];
  configurePhase = ''
    # src is a read-only store path; work on a writable copy and restore the
    # 3rdparty/fast_float layout the release tarball omits (convert.cc needs
    # <fast_float/fast_float.h>: libc++ has no floating-point from_chars)
    cp -r $src src
    chmod -R u+w src
    mkdir -p src/3rdparty/fast_float/include
    cp -r ${pkgs.fast-float}/include/fast_float src/3rdparty/fast_float/include/

    meson setup build src \
      --native-file ${nativeFile} \
      --cross-file ${crossFile} \
      --prefix=$out \
      -Dvulkan=disabled \
      -Dvk-proc-addr=disabled \
      -Dopengl=enabled \
      -Dgl-proc-addr=disabled \
      -Dd3d11=disabled \
      -Dlcms=disabled \
      -Dshaderc=disabled \
      -Dglslang=disabled \
      -Dxxhash=disabled \
      -Ddovi=disabled \
      -Dlibdovi=disabled \
      -Dunwind=disabled \
      -Ddemos=false \
      -Dtests=false \
      -Dbench=false \
      -Dfuzz=false
  '';
  buildPhase = ''
    meson compile -vC build
  '';
  installPhase = ''
    meson install -C build
  '';
}
