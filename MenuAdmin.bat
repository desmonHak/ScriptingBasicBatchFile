:: Presente un menú para abrir más fácilmente:
::     • Administrador de dispositivos
::     • Administrador de discos
::     • Cuentas de usuario (versión pardillos)
::     • Cuentas de usuario (versión Pro)
::     • Carpetas compartidas

:: Version para Windows modernos(choice no funciona para win antiguos)
::
:: @echo off
:: 
:: title Menú de herramientas
:: 
:: :MENU
:: echo Seleccione una opción:
:: echo A - Administrador de dispositivos
:: echo D - Administrador de discos
:: echo U - Cuentas de usuario (versión pardillos)
:: echo P - Cuentas de usuario (versión Pro)
:: echo C - Carpetas compartidas
:: echo Q - Salir
:: 
:: set /p option=Ingrese la opción deseada: 
:: 
:: if /i "%option%"=="A" start devmgmt.msc
:: if /i "%option%"=="D" start diskmgmt.msc
:: if /i "%option%"=="U" start lusrmgr.msc
:: if /i "%option%"=="P" start control userpasswords2
:: if /i "%option%"=="C" start fsmgmt.msc
:: if /i "%option%"=="Q" exit
:: 
:: goto MENU

:: Version valida para todos los Windows
@echo off

echo 1. Administrador de dispositivos
echo 2. Administrador de discos
echo 3. Cuentas de usuario (versión pardillos)
echo 4. Cuentas de usuario (versión Pro)
echo 5. Carpetas compartidas

set /p opcion=Ingresa el número de la opción que deseas abrir: 

if %opcion%==1 (
    start devmgmt.msc
) else if %opcion%==2 (
    start diskmgmt.msc
) else if %opcion%==3 (
    start control.exe userpasswords2
) else if %opcion%==4 (
    start netplwiz
) else if %opcion%==5 (
    start fsmgmt.msc
) else (
    echo Opción inválida. Ingresa un número del 1 al 5.
)
