sudo apt-get install -y smartmontools
for disk in $(ls /dev/ | awk -F'\n' '{if(length($1)>3 && match($1,/sd/)!=0){print "/dev/" $1 }}')
do
log_name=$(echo $disk | awk -F'/' '{print $3}')
#execute=$(smartctl -H $disk)
echo "\033[;32m$log_name\033[0m"
#echo $execute
smartctl -H $disk
done

