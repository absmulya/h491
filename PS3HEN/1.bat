@echo off
copy /Y PS3HEN.BIN_CEX_491 C:\PS3HEN-master\Make_PKG\4.91\dev_rewrite\hen\PS3HEN.BIN
cd C:\PS3HEN-master\Make_PKG
call pack_491.bat
:: ������ ��� ������������ MYLOGIN � ���������� ��� � ���� ftp.dat
echo user MYLOGIN> ftp.dat 

:: ������ ������ ������������ MYPASSW � ���������� ��� � ���� ftp.dat
echo MYPASSW>> ftp.dat

::������ ���� �� FTP ������� - ftp.mysite.ru/docs/files_update
echo cd dev_hdd0>>ftp.dat
echo cd packages>>ftp.dat

:: ������ ��� ����� FILESNAME.TXT � ���������� ��� � ���� ftp.dat
echo put ps3hen_491.pkg_signed.pkg>> ftp.dat

::����� �� FTP ������
echo quit>> ftp.dat
echo >> ftp.dat

::���������� ���������� ��� ���� �� ������ 
ftp -n -s:ftp.dat 10.5.1.45 

