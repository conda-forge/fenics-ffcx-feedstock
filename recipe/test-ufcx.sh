set -eux

cmake -B build \
  -G Ninja \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  test-ufcx

cmake --build build --verbose
cmake --install build
test-ufcx
