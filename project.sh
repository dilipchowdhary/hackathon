./DataGeneration.sh
./excludefields.sh
./setcurl.sh > es.txt
sh es.txt > es.log 
#./script1
./getusagedetails.sh
./formail.sh 
./finalmail.sh > fullmail.txt

