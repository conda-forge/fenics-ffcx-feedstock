CALL VC\Auxiliary\Build\vcvars64.bat
where cl.exe

cmake -G "Ninja" ^
  -DCMAKE_BUILD_TYPE=Release ^
  -DCMAKE_INSTALL_PREFIX="%PREFIX%" ^
  -DCMAKE_C_COMPILER=cl.exe ^
  -B build-dir ^
  --trace ^
  -S cmake/

if errorlevel 1 exit 1

cmake --build build-dir
if errorlevel 1 exit 1

cmake --install build-dir
if errorlevel 1 exit 1
