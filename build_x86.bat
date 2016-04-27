@echo off

if exist usrenv.bat (call usrenv.bat)

if "%BOOST_ROOT%"=="" set BOOST_ROOT=d:\workspace\project\local\Boost\include\boost-1_55
if "%Qt5_DIR%"=="" set Qt5_DIR=d:\Qt\Qt5.6.0\5.6\msvc2013
if "%Qt5Core_DIR%"=="" set Qt5Core_DIR=d:\Qt\Qt5.6.0\5.6\msvc2013\lib\cmake
if "%Qt5Widgets_DIR%"=="" set Qt5Widgets_DIR=d:\Qt\Qt5.6.0\5.6\msvc2013\lib\cmake
if "%IDA_DIR%"=="" set IDA_DIR=d:\tools\IDA6.8
if "%IDA_SDK_DIR%"=="" set IDA_SDK_DIR=d:\tools\IDA6.8\sdk\idasdk68
if "%X64DBG_SDK_DIR%"=="" set X64DBG_SDK_DIR=d:\workspace\research\Debugger\x64dbg\release\pluginsdk

mkdir build32
cd build32

cmake -G "Visual Studio 12 2013" ../src && cmake-gui ../src

cd ..

pause
