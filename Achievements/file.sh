echo "enter a name"
read user
mkdir $user
touch $user/$user.txt
echo "enter ip upto 3 octate"
read ip
nmap $ip.1-255 -v -T5 -oN $user/${user}_alive.txt
echo "task done for $user and host found"
