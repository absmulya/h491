@echo off
copy /Y PS3HEN.BIN_CEX_491 C:\PS3HEN-master\Make_PKG\4.91\dev_rewrite\hen\PS3HEN.BIN
cd C:\PS3HEN-master\Make_PKG
call pack_491.bat
:: Задаем имя пользователя MYLOGIN и записываем его в файл ftp.dat
echo user MYLOGIN> ftp.dat 

:: Задаем пароль пользователя MYPASSW и записываем его в файл ftp.dat
echo MYPASSW>> ftp.dat

::Задаем пути на FTP сервере - ftp.mysite.ru/docs/files_update
echo cd dev_hdd0>>ftp.dat
echo cd packages>>ftp.dat

:: Задаем имя файла FILESNAME.TXT и записываем его в файл ftp.dat
echo put ps3hen_491.pkg_signed.pkg>> ftp.dat

::Выход из FTP сеанса
echo quit>> ftp.dat
echo >> ftp.dat

::Собственно отправляем сам файл на сервер 
ftp -n -s:ftp.dat 10.5.1.45 

