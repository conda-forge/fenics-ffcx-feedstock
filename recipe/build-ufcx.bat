setlocal EnableDelayedExpansion

cmake -G "NMake Makefiles" ^
  -DCMAKE_INSTALL_PREFIX="%PREFIX%" ^
  -DCMAKE_PREFIX_PATH:PATH="%LIBRARY_PREFIX%" ^
  -B build-dir ^
  -S cmake/
if errorlevel 1 exit 1

cmake --build build-dir
if errorlevel 1 exit 1

cmake --install build-dir
if errorlevel 1 exit 1
