#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE[0]}")"

# sudo apt install curl libgtk-3-dev libatk-bridge2.0-dev libgdk-pixbuf2.0-dev libglu1-mesa-dev libx11-dev libxt-dev libdbus-1-dev

LWJGL_OUTPUT_DIR="${LWJGL_OUTPUT_DIR:-/tmp/lwjgl3-build/output}"

NATIVE_LIBS_BASE="$PWD/bin/libs/native/linux/loongarch64/org/lwjgl"

mkdir -p "$NATIVE_LIBS_BASE"
cp "$LWJGL_OUTPUT_DIR/libffi.a" "$NATIVE_LIBS_BASE/libffi.a"

mkdir -p "$NATIVE_LIBS_BASE/assimp"
cp "$LWJGL_OUTPUT_DIR/libassimp.so" "$NATIVE_LIBS_BASE/assimp/libassimp.so"
cp "$LWJGL_OUTPUT_DIR/libdraco.so"  "$NATIVE_LIBS_BASE/assimp/libdraco.so"

mkdir -p "$NATIVE_LIBS_BASE/bgfx"
cp "$LWJGL_OUTPUT_DIR/libbgfx.so" "$NATIVE_LIBS_BASE/bgfx/libbgfx.so"

mkdir -p "$NATIVE_LIBS_BASE/freetype"
cp "$LWJGL_OUTPUT_DIR/libfreetype.so" "$NATIVE_LIBS_BASE/freetype/libfreetype.so"

mkdir -p "$NATIVE_LIBS_BASE/harfbuzz"
cp "$LWJGL_OUTPUT_DIR/libharfbuzz.so" "$NATIVE_LIBS_BASE/harfbuzz/libharfbuzz.so"

mkdir -p "$NATIVE_LIBS_BASE/hwloc"
cp "$LWJGL_OUTPUT_DIR/libhwloc.so" "$NATIVE_LIBS_BASE/hwloc/libhwloc.so"

mkdir -p "$NATIVE_LIBS_BASE/jemalloc"
cp "$LWJGL_OUTPUT_DIR/libjemalloc.so" "$NATIVE_LIBS_BASE/jemalloc/libjemalloc.so"

mkdir -p "$NATIVE_LIBS_BASE/ktx"
cp "$LWJGL_OUTPUT_DIR/libktx.so" "$NATIVE_LIBS_BASE/ktx/libktx.so"

mkdir -p "$NATIVE_LIBS_BASE/openal"
cp "$LWJGL_OUTPUT_DIR/libopenal.so" "$NATIVE_LIBS_BASE/openal/libopenal.so"

mkdir -p "$NATIVE_LIBS_BASE/openxr"
cp "$LWJGL_OUTPUT_DIR/libopenxr_loader.so" "$NATIVE_LIBS_BASE/openxr/libopenxr_loader.so"

mkdir -p "$NATIVE_LIBS_BASE/opus"
cp "$LWJGL_OUTPUT_DIR/libopus.so" "$NATIVE_LIBS_BASE/opus/libopus.so"

