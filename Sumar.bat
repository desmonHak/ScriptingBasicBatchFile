:: Sume dos números pedidos al usuario

@echo off

set /p num1=Introduce el primer número: 
set /p num2=Introduce el segundo número: 

set /a suma=%num1%+%num2%

echo El resultado de la suma es: %suma%
