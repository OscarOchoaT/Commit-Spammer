@echo off

rem Crea el archivo file.txt con contenido vacío
echo. > file.txt

for /L %%i in (5001,1,20000) do (
    rem Añade una línea al archivo file.txt
    echo Commit número %%i >> file.txt

    rem Ejecuta los comandos de git
    git add *
    git commit -m "Commit %%i"
)

git push
