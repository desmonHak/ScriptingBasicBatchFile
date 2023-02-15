:: Pregunte por el nombre de un proceso 
:: y lo mate miserablemente

@echo off

set /p proceso=Introduce el nombre del proceso a terminar: 

:: La opción "/f" se utiliza para forzar la 
:: terminación del proceso y la opción "/im" 
:: se utiliza para especificar el nombre del 
:: proceso a terminar (en este caso, el nombre 
:: del proceso se toma de la variable "proceso").
taskkill /f /im %proceso%

pause >> nul
