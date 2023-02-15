:: Pregunte por la edad del usuario:
::     • Si es mayor de edad, le dirá al 
::       usuario que puede ver de todo
::     • Si es menor de edad, le dirá que 
::       solo puede ver el Clan

@echo off

set /p edad=Cual es tu edad: 

rem  El operador GEQ del if comprueba si el valor es mayor o igual a 18.
if %edad% GEQ 18 (
    echo Eres mayor de edad, puedes ver de todo.
) else (
    echo Eres menor de edad, solo puedes ver el Clan.
)

pause >> nul