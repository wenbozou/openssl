@echo off
set build_dir_path=%~dp0

echo %build_dir_path%

set LANG=C
set LC_ALL=C

set prefix_value=%build_dir_path%..\output\3.4.0\x86\
set openssldir_value=%build_dir_path%..\output\3.4.0\x86\SSL
set with_zlib_include_value=%build_dir_path%..\external\zlib\x86\Release\include
set with_zlib_lib_value=%build_dir_path%..\external\zlib\x86\Release\lib\zlibwapi.lib

if not exist %prefix_value% mkdir %prefix_value%
if not exist %openssldir_value% mkdir %openssldir_value%
rem perl Configure VC-WIN32 --release --prefix=G:\SourceCode\openssl\output --openssldir=G:\SourceCode\openssl\output\3.4.0 zlib-dynamic  --with-zlib-include=G:\SourceCode\openssl\external\zlib\include --with-zlib-lib=G:\SourceCode\openssl\external\zlib\lib\x86\Release\zlibwapi.lib

perl Configure VC-WIN32 --debug --prefix=%prefix_value% --openssldir=%openssldir_value% zlib-dynamic --with-zlib-include=%with_zlib_include_value% --with-zlib-lib=%with_zlib_lib_value%
rem perl Configure VC-WIN32 --release --prefix="G:\SourceCode\curl\openssl-3.3.0\build" --openssldir="G:\SourceCode\curl\openssl-3.3.0\build\SSL" zlib-dynamic --with-zlib-include="..\deps\zlib-1.3.1\include" --with-zlib-lib="..\deps\zlib_1.3.1\lib\Win32\Release\zlib.lib"


rem perl Configure VC-WIN64A --debug --prefix="../output/3.4.0" --openssldir="../output/3.4.0/SSL" zlib-dynamic --with-zlib-include="../output/3.4.0/include" --with-zlib-lib="../output/3.4.0/lib/zlib.lib"
rem perl Configure VC-WIN64A --release --prefix="G:\SourceCode\curl\openssl-3.3.0\build" --openssldir="G:\SourceCode\curl\openssl-3.3.0\build\SSL" zlib-dynamic --with-zlib-include="..\deps\zlib-1.3.1\include" --with-zlib-lib="..\deps\zlib_1.3.1\lib\Win32\Release\zlib.lib"

nmake

nmake install


