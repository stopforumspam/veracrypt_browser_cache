@echo off

echo Generating Password
for /f %%i in ('"C:\Program Files\Git\usr\bin\openssl.exe" rand -hex 32') do set PASSWD=%%i

echo Formatting
"C:\Program Files\VeraCrypt\VeraCrypt Format.exe" /create "%USERPROFILE%\tempdisk.vc" /size "200M" /password %PASSWD% /encryption AES /hash sha-512 /filesystem exfat /pim 0 /quick /dynamic /silent /force

echo Mounting
"C:\Program Files\VeraCrypt\VeraCrypt.exe" /volume "%USERPROFILE%\tempdisk.vc" /letter r /password %PASSWD% /quit /m rm
mkdir r:\temp
