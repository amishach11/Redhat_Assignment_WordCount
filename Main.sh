file=2264.txt
for word in $(sed 's/[^A-Za-z]/ /g' $file | tr " " "\n" | sort -u)
do
  echo -n "$word "
  grep -c $word $file
done | sort -k2 -n

 sed -e 's/\s/\n/g' < 2264.txt | sort | uniq -c | sort -nr | head  -10> wordcount.txt
 
Sum=`egrep -o "[0-9][0-9]*" "a.txt" |
     awk  '{ SUM += $1} END { print SUM }'`


cat a.txt | awk -v s=$Sum '{ ORS=""};
    {a=$1/s;print $2;
    print "|";
    for(i=1;i<=a*200;i++) 
            print "|"
    print "|",a*100,"%","\n"}'
