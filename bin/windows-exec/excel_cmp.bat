@ECHO OFF
SETLOCAL
set dirname=%~dp0
java -ea -cp "%dirname%\dist\*;" com.ka.spreadsheet.diff.SpreadSheetDiffer %*
ENDLOCAL

REM C:\Users\madhu\OneDrive\Documents\GitHub\ExcelCompare-0.6.1\bin>excel_cmp C:\Users\madhu\OneDrive\Documents\GitHub\ExcelCompare-0.6.1\SourceExcelFiles\excel_one.xlsx C:\Users\madhu\OneDrive\Documents\GitHub\ExcelCompare-0.6.1\TargetExcelFiles\excel_two.xlsx > C:\Users\madhu\OneDrive\Documents\GitHub\ExcelCompare-0.6.1\ComparisonOutput\ComparisonOutput.txt