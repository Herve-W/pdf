@echo off
set "typstFile=complet.typ"
set "outputDir=.\"

echo Compiling physique documents...
FOR /L %%i IN (1,1,7) DO (
    typst c "%typstFile%" --input nbr=%%i --input matiere="physique" "%outputDir%\P%%i.pdf" --root="../../"
)

echo Compiling chimie document...
FOR /L %%i IN (1,1,7) DO (
    typst c "%typstFile%" --input nbr=%%i --input matiere="chimie" "%outputDir%\C%%i.pdf" --root="../../"
)
echo All compilations are complete.
PAUSE