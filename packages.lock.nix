{
  dav1d = {
    version = "1.5.4";
    url = "https://code.videolan.org/videolan/dav1d/-/archive/1.5.4/dav1d-1.5.4.tar.bz2";
    sha256 = "2abfb0c89212e6e4733a54e0ae509ec00a5b845a6360946f918806e14aedb011";
  };
  ffmpeg = {
    version = "9.0.2";
    url = "https://ffmpeg.org/releases/ffmpeg-9.0.2.tar.xz";
    sha256 = "8c3850283eb25fa026482078a04051e0be17347b09ef81a0849bec15a96e002e";
  };
  fftools-ffi = {
    version = "9b0d4da0";
    url = "https://github.com/moffatman/fftools-ffi/archive/9b0d4da026d9c830702ec043c1f1f98d407025af.tar.gz";
    sha256 = "mgf3ddt3yjmYBd2D0WeEnhgxKNjrEbjYnDx2t4YCfU8=";
  };
  freetype = {
    version = "2.15.0";
    url = "https://downloads.sourceforge.net/project/freetype/freetype2/2.15.0/freetype-2.15.0.tar.xz";
    sha256 = "93cd47eb719c325107f2d3cf087d06299e944c3b48a40b55537302304dea1dd5";
  };
  fribidi = {
    version = "1.0.17";
    url = "https://github.com/fribidi/fribidi/releases/download/v1.0.17/fribidi-1.0.17.tar.xz";
    sha256 = "6949dcde27d41cebad1fd741fcafc36d55a1020d2d872d4a6eb3914caabbada2";
  };
  harfbuzz = {
    version = "15.0.0";
    url = "https://github.com/harfbuzz/harfbuzz/releases/download/15.0.0/harfbuzz-15.0.0.tar.xz";
    sha256 = "968536e9abd782f07f7954044c0c4020199fcdd39b41d221ec42d2a3be4a44df";
  };
  libass = {
    version = "0.17.5";
    url = "https://github.com/libass/libass/releases/download/0.17.5/libass-0.17.5.tar.xz";
    sha256 = "2dca25c0e0c837ddf00b52011b3f82cac1e4ddd3ad018227806b0c2288864acc";
  };
  libogg = {
    version = "1.3.5";
    url = "https://github.com/xiph/ogg/releases/download/v1.3.5/libogg-1.3.5.tar.gz";
    sha256 = "0eb4b4b9420a0f51db142ba3f9c64b333f826532dc0f48c6410ae51f4799b664";
  };
  libplacebo = {
    version = "7.360.1";
    url = "https://code.videolan.org/videolan/libplacebo/-/archive/v7.360.1/libplacebo-v7.360.1.tar.bz2";
    sha256 = "937aa5eeea596798b3274d362de2e3bd32bc537a66d149dd85043349c74dffb6";
  };
  libpng = {
    version = "1.6.59";
    url = "https://github.com/pnggroup/libpng/archive/v1.6.59.tar.gz";
    sha256 = "2540302a1844ad2b2b501977abecfa850f265f97b78f065a712ab4074a89f5b5";
  };
  libpngPatch = {
    version = "1.6.59-1";
    url = "https://wrapdb.mesonbuild.com/v2/libpng_1.6.59-1/get_patch";
    sha256 = "d20d5e20516a550817026b0074c4051ff4342da43f0600827316ea85f89d1d38";
  };
  libvorbis = {
    version = "1.3.7";
    url = "https://github.com/xiph/vorbis/releases/download/v1.3.7/libvorbis-1.3.7.tar.gz";
    sha256 = "0e982409a9c3fc82ee06e08205b1355e5c6aa4c36bca58146ef399621b0ce5ab";
  };
  libvpx = {
    version = "1.13.0+1";
    url = "https://gitlab.freedesktop.org/gstreamer/meson-ports/libvpx/-/archive/90d26fac0d895969a82cd873ad36e39737104c44/libvpx-v1.13.0.tar.gz";
    sha256 = "4f872ad2709d17b848b3588231495e432c42b9263731b9121fa210a3c5a893ff";
  };
  libx264 = {
    version = "a8b68ebf";
    url = "https://code.videolan.org/videolan/x264/-/archive/a8b68ebfaa68621b5ac8907610d3335971839d52/libx264-a8b68ebfaa68621b5ac8907610d3335971839d52.tar.gz";
    sha256 = "164688b63f11a6e4f6d945057fc5c57d5eefb97973d0029fb0303744e10839ff";
  };
  libxml2 = {
    version = "2.15.4";
    url = "https://download.gnome.org/sources/libxml2/2.15/libxml2-2.15.4.tar.xz";
    sha256 = "98087fd181d9070724f3fbc65c7377db03038eb92bd882374daff44940138821";
  };
  mbedtls = {
    version = "3.6.3.1";
    url = "https://github.com/Mbed-TLS/mbedtls/releases/download/v3.6.3.1/mbedtls-3.6.3.1.tar.bz2";
    sha256 = "243ed496d5f88a5b3791021be2800aac821b9a4cc16e7134aa413c58b4c20e0c";
  };
  mpv = {
    version = "0.41.0";
    url = "https://github.com/mpv-player/mpv/archive/refs/tags/v0.41.0.tar.gz";
    sha256 = "ee21092a5ee427353392360929dc64645c54479aefdb5babc5cfbb5fad626209";
  };
  uchardet = {
    version = "0.0.8";
    url = "https://www.freedesktop.org/software/uchardet/releases/uchardet-0.0.8.tar.xz";
    sha256 = "e97a60cfc00a1c147a674b097bb1422abd9fa78a2d9ce3f3fdcc2e78a34ac5f0";
  };
  vulkan-headers = {
    version = "1.3.290";
    url = "https://github.com/KhronosGroup/Vulkan-Headers/archive/refs/tags/v1.3.290.tar.gz";
    sha256 = "f38a653bf93cab7a2a229a53d2d53b1cba9a2819e4c0a7de13c54085bde9bcf5";
  };
}
