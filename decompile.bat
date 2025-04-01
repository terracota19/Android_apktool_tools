@echo off
setlocal

rem Pedir el nombre de la APK al usuario
set /p APKNAME=Introduce el nombre de la APK (sin .apk):

rem Nombre del directorio de salida (donde se descompilará)
set OUTPUT_DIR=%APKNAME%

rem Verificar si la APK existe
if not exist "%APKNAME%.apk" (
    echo Error: El archivo %APKNAME%.apk no existe.
    pause
    exit /b
)

rem Descompilar la APK
echo Descompilando APK...
java -jar "%apktool%" d "%APKNAME%.apk"

echo Proceso completado. Archivos extraídos en: %OUTPUT_DIR%
exit
