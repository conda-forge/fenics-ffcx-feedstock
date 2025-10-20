setlocal EnableDelayedExpansion

:: rattler-build bug: %LIBRARY_PREFIX% not defined

cmake -G "NMake Makefiles" ^
  %CMAKE_ARGS% ^
  -DCMAKE_BUILD_TYPE=Release ^
  -DCMAKE_INSTALL_PREFIX="%PREFIX%\Library" ^
  -B build-dir ^
  -S cmake/

if errorlevel 1 exit 1

cmake --build build-dir
if errorlevel 1 exit 1

cmake --install build-dir
if errorlevel 1 exit 1
