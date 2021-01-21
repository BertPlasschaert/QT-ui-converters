set "originFolder=D:\OneDrive - BUas\MGT\Block_B\uicVideo\ExampleFiles\qtdesigner"
set "destinationFolder=D:\OneDrive - BUas\MGT\Block_B\uicVideo\ExampleFiles\Project\UI"

cd %originFolder%

for %%f in (*.ui) do (
start C:\Users\Bert\AppData\Local\Programs\Python\Python38\Scripts\pyside2-uic.exe "%originFolder%\%%f" -o "%destinationFolder%\%%~nf.py"
)

:: remove "::" if you want to stop the terminal from auto closing
:: cmd \k
