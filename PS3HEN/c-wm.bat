@echo off
setlocal enabledelayedexpansion

xcopy /Y PS3HEN.BIN_CEX_491 C:\PS3HEN-master\Make_PKG\henwm-491\dev_rewrite\hen\PS3HEN.BIN
xcopy /Y PS3HEN.BIN_CEX_491 C:\PS3HEN-master\Make_PKG\henwm-491\dev_hdd0\hen\mode\release\PS3HEN.BIN
rem xcopy /Y PS3HEN.BIN_CEX_491_DEBUG C:\PS3HEN-master\Make_PKG\henwm-491\dev_hdd0\hen\mode\debug\PS3HEN.BIN
