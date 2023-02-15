:: Pregunte por la nota del usuario en un examen:
::     • Si la nota es mayor o igual que 5, felicitará 
::          por el aprobado y calculará cuántos puntos 
::          han sobrado para el aprobado
::     • Si la nota es inferior a 5, animará al usuario 
::          y calculará cuántos puntos le han faltado 
::          para el aprobado
:: Mejora: Si la versión “normal” falla, hacer una ñapa, 
::          y luego crear la versión refinada

@echo off

set /p nota=Introduce tu nota en el examen (sobre 10): 


if %nota% geq 5 (
    :: Compara la nota introducida con el valor 5 
    :: y si es mayor o igual a 5, muestra un mensaje 
    :: de felicitación y calcula cuántos puntos sobraron 
    :: para aprobar. Si la nota es inferior a 5, muestra 
    :: un mensaje de ánimo y calcula cuántos puntos 
    :: faltaron para aprobar.
    echo Felicidades, has aprobado!
    set /a sobrado=10 - %nota%
    echo Te han sobrado %sobrado% puntos para aprobar.
) else (
    echo Ánimo, no te rindas!
    set /a faltado=5 - %nota%
    echo Te han faltado %faltado% puntos para aprobar.
)

rem Ñapa en caso de error en la versión normal:
if errorlevel 1 (
    :: En caso de que haya algún error en la versión 
    :: normal del script, muestra un mensaje de error 
    :: y pide al usuario que introduzca nuevamente la 
    :: nota. Luego, repite el proceso de comparación de 
    :: notas para mostrar el mensaje correspondiente.
    echo Ha habido un error en la versión normal.
    set /p nota=Introduce tu nota en el examen (sobre 10): 

    if %nota% geq 5 (
        echo Felicidades, has aprobado!
        set /a sobrado=10 - %nota%
        echo Te han sobrado %sobrado% puntos para aprobar.
    ) else (
        echo Ánimo, no te rindas!
        set /a faltado=5 - %nota%
        echo Te han faltado %faltado% puntos para aprobar.
    )
)



rem Versión refinada:
:: En la versión refinada del script, primero se define 
:: una etiqueta llamada "preguntar_nota". Luego, se solicita 
:: al usuario que introduzca una nota en el examen y se verifica 
:: si se ha introducido un valor. Si no se ha introducido un valor, 
:: se vuelve a la etiqueta "preguntar_nota" para solicitar una nota 
:: nuevamente. Si se ha introducido un valor, se verifica si es un número. 
:: Si no es un número, se vuelve a la etiqueta "preguntar_nota". 
:: Si es un número, se realiza la comparación de notas y se 
:: muestra el mensaje correspondiente.
:preguntar_nota
set /p nota=Introduce tu nota en el examen (sobre 10): 

if not defined nota goto preguntar_nota

set /a nota=%nota% 2>nul
if %errorlevel% neq 0 goto preguntar_nota

if %nota% geq 5 (
    echo Felicidades, has aprobado!
    set /a sobrado=10 - %nota%
    echo Te han sobrado %sobrado% puntos para aprobar.
) else (
    echo Ánimo, no te rindas!
    set /a faltado=5 - %nota%
    echo Te han faltado %faltado% puntos para aprobar.
)
