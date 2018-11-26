#!/bin/ksh

export count_files=`wc -l lkp_excel_cmp.lkp| awk '{ print $1}' `

#ignorning header record
count_files_1=`expr $count_files - 1` 

echo " $count_files_1 files will be compared"

count=0

while read line
do
first_sheet=`echo $line | awk -F"," '{ print $1}`
#echo $first_sheet
second_sheet=`echo $line | awk -F"," '{print $2}`
#echo $second_sheet
options=`echo $line | awk -F"," '{print $3}'`
#echo $options

if [ $count -eq 0 ]
then
echo "excel_comparison $first_sheet $second_sheet $options" >> /dev/null
else 
echo "Comparison is done for # $count Files : $first_sheet and $second_sheet"
echo "Result can be seen in comparison_result_${count}.txt file"
excel_cmp $first_sheet $second_sheet $options > comparison_result_${count}.txt
fi
count=`expr $count + 1`

done < lkp_excel_cmp.lkp
