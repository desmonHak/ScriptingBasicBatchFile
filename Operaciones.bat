:: Pregunte al usuario dos números y muestre por pantalla:
::     • La suma de los dos números.
::     • La resta, pero sólo si el primero es mayor que el 
::         segundo. Si no, mostrará un mensaje de error 
::         indicando que no se quieren mostrar número 
::         negativos.
::     • La multiplicación de los dos números.
::     • La división, pero sólo si el segundo número 
::         no es cero. Si es 0, mostrará otro mensaje 
::         de error indicando que no se puede dividir 
::         por cero.

@echo off

set /p num1=Introduce el primer número: 
set /p num2=Introduce el segundo número: 

echo Suma: %num1% + %num2% = %result%

if %num1% gtr %num2% (
    set /a result=%num1% - %num2%
    echo Resta: %num1% - %num2% = %result%
) else (
    echo No se quieren mostrar números negativos.
)

set /a result=%num1% * %num2%
echo Multiplicación: %num1% * %num2% = %result%

if %num2% equ 0 (
    echo No se puede dividir por cero.
) else (
    set /a result=%num1% / %num2%
    echo División: %num1% / %num2% = %result%
)
