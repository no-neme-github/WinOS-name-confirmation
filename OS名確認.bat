for /f "usebackq delims=" %%B in (`reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "ProductName"`) do set OS=%%B
for /f "usebackq delims=" %%B in (`echo %OS:ProductName=%`) do set OS=%%B
for /f "usebackq delims=" %%B in (`echo %OS:REG_SZ=%`) do set OS=%%B
for /f "usebackq delims=" %%B in (`echo %OS:(TM)=%`) do set OS=%%B
echo %OS%
pause