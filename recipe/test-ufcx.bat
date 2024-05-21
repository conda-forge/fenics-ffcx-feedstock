cmake -G "NMake Makefiles" ^ 
  -B build ^
  -DCMAKE_INSTALL_PREFIX=%PREFIX% ^
  test-ufcx

if errorlevel 1 exit 1

cmake --build build --verbose
if errorlevel 1 exit 1

cmake --install build
if errorlevel 1 exit 1

test-ufcx
if errorlevel 1 exit 1
