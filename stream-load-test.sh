#!/bin/sh
#
# run concurrent curls which download from URL to /dev/null.  output total
# and average counts to results directory.
#

# max concurrent curls to kick off
max=7000
# how long to stay connected (in seconds)
duration=99999999
# how long to sleep between each curl, can be decimal  0.5
delay=10
# url to request from
URL=http://stream.radioangrezi.de:8000/live


#####
#mkdir -p results
echo > results
while /bin/true
do
count=1
while [ $count -le $max ]
do  
   curl -o /dev/null -m $duration -s -w "bytes %{size_download} avg %{speed_download} " "$URL" >> results &
   curl -o /dev/null -m $duration -s -w "bytes %{size_download} avg %{speed_download} " "$URL" >> results &
   curl -o /dev/null -m $duration -s -w "bytes %{size_download} avg %{speed_download} " "$URL" >> results &
   curl -o /dev/null -m $duration -s -w "bytes %{size_download} avg %{speed_download} " "$URL" >> results &
   curl -o /dev/null -m $duration -s -w "bytes %{size_download} avg %{speed_download} " "$URL" >> results &
   curl -o /dev/null -m $duration -s -w "bytes %{size_download} avg %{speed_download} " "$URL" >> results &
   curl -o /dev/null -m $duration -s -w "bytes %{size_download} avg %{speed_download} " "$URL" >> results &
   curl -o /dev/null -m $duration -s -w "bytes %{size_download} avg %{speed_download} " "$URL" >> results &
   curl -o /dev/null -m $duration -s -w "bytes %{size_download} avg %{speed_download} " "$URL" >> results &
   curl -o /dev/null -m $duration -s -w "bytes %{size_download} avg %{speed_download} " "$URL" >> results &
   curl -o /dev/null -m $duration -s -w "bytes %{size_download} avg %{speed_download} " "$URL" >> results &
   [ "$delay" != "" ] && sleep $delay
   let count=$count+10
done
wait
done
echo "done"
