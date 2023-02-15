:: Pregunte por el nombre, edad, localidad 
:: y mascota del usuario y luego elabore 
:: una frase de saludo enumerando las 4 respuestas

@echo off

set /p nombre=Cual es tu nombre: 
set /p edad=Cual es tu edad: 
set /p localidad=Cual es tu localidad: 
set /p mascota=que mascota tienes?

echo Bienvenido usuario %nombre% con edad %edad%, tu y tu mascota %mascota% viven en %localidad%

pause >> nul