#List all Open Files
lsof | less
#List User Specific Opened Files
lsof -u admin
#Find Processes running on Specific Port
lsof -i TCP:22
lsof -i:9000
#List Only IPv4 & IPv6 Open Files
lsof -i 4
lsof -i 6
#List Open Files of TCP Port ranges 1-1024
lsof -i TCP:1-1024
#Exclude User with ‘^’ Character
lsof -i -u^root
#List all Network Connections
lsof -i
#Search by PID
lsof -p 1
#Kill all Activity of Particular User
kill -9 'lsof -t -u tecmint'
#List processes which opened a specific file
lsof /var/log/syslog
#List opened files under a directory
lsof +D /var/log/
