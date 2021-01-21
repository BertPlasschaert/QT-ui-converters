set "originFolder=D:\OneDrive - BUas\MGT\Block_B\uicVideo\ExampleFiles"
set "destinationFolder=D:\OneDrive - BUas\MGT\Block_B\uicVideo\ExampleFiles"

cd %originFolder%

for %%f in (*.ui) do (
call "C:\Program Files\Autodesk\Maya2020\bin\mayapy.exe" "C:\Program Files\Autodesk\Maya2020\bin\pyside2-uic" "%originFolder%\%%f" > "%destinationFolder%\%%~nf.py"
)

:: remove "::" if you want to stop the terminal from auto closing
:: cmd \k
