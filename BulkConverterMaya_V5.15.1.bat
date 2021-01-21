set "originFolder=D:\OneDrive - BUas\MGT\Block_B\uicVideo\NewFiles"
set "destinationFolder=D:\OneDrive - BUas\MGT\Block_B\uicVideo\NewFiles"

cd %originFolder%

for %%f in (*.ui) do (
start "C:\Program Files\Autodesk\Maya2020\bin\mayapy.exe" pyside2-uic "%originFolder%\%%f" -o "%destinationFolder%\%%~nf.py"
)


:: remove "::" if you want to stop the terminal from auto closing
:: cmd \k


