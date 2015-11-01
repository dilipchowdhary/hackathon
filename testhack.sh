for i in {1..5000}
do 
echo " 
\"CustomerID\":\"$i\",\"DeviceID\":\"$RANDOM$RANDOM\",\"Website\":\"yahoomail.com\",\"usage\":\"$RANDOM1$RANDOM\",\"StartTime\":\"`date +%Y-%m-%dT%H:%M:%S`\",\"EndTime\":\"`date -d "+5 minutes" +%Y-%m-%dT%H:%M:%S`\"

"
done

