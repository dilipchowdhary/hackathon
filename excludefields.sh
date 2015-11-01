echo -e " Enter Field to be excluded :\c" 
read Input
if [ $# -eq 0 ]
then 
exit 1
fi

grep -v -w $Input input.txt > input.txt
