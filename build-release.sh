#!/usr/bin/env bash
# builds a release version of the executable

PLATFORM=i686-pc-windows-msvc

# clean artifacts
cargo clean

# build
xargo rustc --target $PLATFORM --release --verbose -- --emit=obj

# compress
./bin/Crinkler /OUT:rs-xk-release.exe /SUBSYSTEM:WINDOWS target/$PLATFORM/release/deps/rs_xk.o /ENTRY:mainCRTStartup "/LIBPATH:C:\Program Files (x86)\Windows Kits\10\Lib\10.0.18362.0\um\x86" gdi32.lib user32.lib opengl32.lib kernel32.lib winmm.lib
