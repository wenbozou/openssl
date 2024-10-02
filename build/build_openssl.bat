@echo off
set build_dir_path=%~dp0

echo %build_dir_path%

set LANG=C
set LC_ALL=C

rem echo "Building OpenSSL for Win32..."
rem set prefix_value=%build_dir_path%..\output\3.4.0\x86\
rem set openssldir_value=%build_dir_path%..\output\3.4.0\x86\SSL
rem set with_zlib_include_value=%build_dir_path%..\external\zlib\x86\Release\include
rem set with_zlib_lib_value=%build_dir_path%..\external\zlib\x86\Release\lib\zlib.lib

rem if not exist %prefix_value% mkdir %prefix_value%
rem if not exist %openssldir_value% mkdir %openssldir_value%

rem rem perl Configure VC-WIN32 --debug --prefix=%prefix_value% --openssldir=%openssldir_value% zlib-dynamic --with-zlib-include=%with_zlib_include_value% --with-zlib-lib=%with_zlib_lib_value%
rem perl Configure VC-WIN32 --release --prefix=%prefix_value% --openssldir=%openssldir_value% zlib-dynamic --with-zlib-include=%with_zlib_include_value% --with-zlib-lib=%with_zlib_lib_value%

rem nmake
rem nmake install


echo "Building OpenSSL for x64..."
set prefix_value=%build_dir_path%..\output\3.4.0\x64\
set openssldir_value=%build_dir_path%..\output\3.4.0\x64\SSL
set with_zlib_include_value=%build_dir_path%..\external\zlib\x64\Release\include
set with_zlib_lib_value=%build_dir_path%..\external\zlib\x64\Release\lib\zlib.lib

if not exist %prefix_value% mkdir %prefix_value%
if not exist %openssldir_value% mkdir %openssldir_value%

rem perl Configure VC-WIN64A --debug --prefix="../output/3.4.0" --openssldir="../output/3.4.0/SSL" zlib-dynamic --with-zlib-include="../output/3.4.0/include" --with-zlib-lib="../output/3.4.0/lib/zlib.lib"
perl Configure VC-WIN64A --release --prefix=%prefix_value% --openssldir=%openssldir_value% zlib-dynamic --with-zlib-include=%with_zlib_include_value% --with-zlib-lib=%with_zlib_lib_value%

nmake
nmake install




