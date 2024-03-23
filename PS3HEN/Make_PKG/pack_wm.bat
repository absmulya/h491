@echo off
setlocal EnabledelayedExpansion

:: ----------------------------------------------
:: Simple script to build a PKG (by CaptainCPS-X)
:: ----------------------------------------------

:: Change these for your application / manual...
set CID=CUSTOM-INSTALLER_00-0000000000000000
if exist latest_rus_WMM_sign.pkg del /Q latest_rus_WMM_sign.pkg

for /D %%A in (henwm-491) do (
set nm=%%A
make_package_custom.exe --contentid %CID% ./%%A/ WMM.pkg
echo | ps3xploit_rifgen_edatresign WMM.pkg ps3 >> NUL
rem del /q ps3hen_!nm:.=!.pkg
ren WMM.pkg_signed.pkg latest_rus_WMM_sign.pkg
if exist "latest_rus_WMM_sign.pkg" echo !nm! PKG done
echo.
)
rem pause