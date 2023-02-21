#!/bin/bash

mkdir -p build
cd build/ || exit 1

for dir in ../gdextensions/* ; do
  sub_build_dir="$(basename "$dir")"
  mkdir -p "$sub_build_dir"
  cd "$sub_build_dir" || exit 1
  cmake "../$dir"
  cp "$dir"/*.gdextension ../..
  make
  cd ..
done



