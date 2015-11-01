paste forsubject.txt finalmail.txt > pastemail.txt
for i in `cat finalmail.txt |awk -F: '{ print $3 }'|awk -F\" '{ print $2 }'`
do
j=`grep $i pastemail.txt |awk -F, '{ print $3 $2 }'`
echo -e " \t Usage Limit Reached \n $j" 

done
