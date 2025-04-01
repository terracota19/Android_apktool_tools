@echo off
setlocal

rem Pedir el nombre de la APK al usuario
set /p APKNAME=Introduce el nombre del directorio del código (sin .apk):

rem Ruta del almacén de claves 
set KEYSTORE=test.keystore
set STOREPASS=password
set KEYPASS=password

rem Nombre de la APK generada
set OUTPUT_APK=mod_%APKNAME%.apk

rem Compilar el APK
echo Compilando APK...
java -jar "%apktool%" b "%APKNAME%" -o "%OUTPUT_APK%"

rem Firmar el APK
echo Firmando APK...
jarsigner -keystore "%KEYSTORE%" -storepass "%STOREPASS%" -keypass "%KEYPASS%" "%OUTPUT_APK%" android

echo Proceso completado. APK firmada: %OUTPUT_APK%
exit
