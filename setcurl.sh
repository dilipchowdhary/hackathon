j=`cat j.txt`
for i in `cat /apps/opt/techwizards/ProjectFinal/input.txt`
do

echo "
curl -XPUT \"http://113.128.165.18:9200/testhack/hack/$j\" -d '{

$i

}' "
((j = j + 1))
echo $j > j.txt
done
