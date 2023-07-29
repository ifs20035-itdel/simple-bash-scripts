## awk

### will return the 12th thing in each 

grep -i break-in auth.log | awk {'print $12'}

## sed

### it also for string manipulation


$website=$1

for i in {1..10}
do
    ping -c 1 $website | grep "bytes from" | cut -d '=' -f 4
done
