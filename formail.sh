> finalmail.txt
> forsubject.txt
for i in `cat output.txt |awk -F: '{ print $3 }'|awk -F, '{ print $1 }'|awk -F. '{print $1}'|awk '$1 > 400000'`
do
grep -w $i output.txt >> forsubject.txt
j=`grep -w $i output.txt|awk -F, '{ print $1 }'|awk -F: '{ print $2 }' `
grep -w $j mail.txt >> finalmail.txt
done
