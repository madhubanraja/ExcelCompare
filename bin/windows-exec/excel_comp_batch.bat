FOR /F "tokens=1,2 delims=," %%G IN (lkp_excel_cmp_windows.txt) DO (excel_cmp %%G %%H > C:\Users\madhu\OneDrive\Documents\GitHub\ExcelCompare-0.6.1\ComparisonOutput\ComparisonOutput.txt)
