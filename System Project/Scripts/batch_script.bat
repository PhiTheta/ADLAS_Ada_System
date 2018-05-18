rem ### This is a script that takes the excel requirements of each of the ada requirements
rem ### and autogenerates the code by passing it over to the linux script

cd %ADLAS_Workspace%\Software-Requirements\BIT
PAUSE
echo %ADLAS_Workspace%
in2csv Packages_Requirements.xlsx > Packages_Requirements.csv

xcopy Packages_Requirements.csv %UNIX_Workspace%