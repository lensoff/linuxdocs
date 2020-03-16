# any line with text
sed -i 's/^SELINUX=.*/SELINUX=disabled/g' /etc/sysconfig/selinux && reboot
# ???
# DebugLevel=3 -> DebugLevel=20
sed -i 's/..DebugLevel=.*/DebugLevel=20/g' 111.txt

# with variables

S1='Server=127.0.0.1'
S2='Server=10.53.42.4'

sed -i -e "s/$S1/$S2/g" /etc/zabbix/zabbix_agentd.conf

#replace with empty string
sed -i -e 's/Hostname=Zabbix server//g' 111
sed -i -e "s/$H1//g" 111

#https://unix.stackexchange.com/questions/121161/how-to-insert-text-after-a-certain-string-in-a-file
#Append line after match
    sed  '/\[option\]/a Hello World' input
#Insert line before match
    sed  '/\[option\]/i Hello World' input

sed -i.bkp '/\[mysqld\]/a log_error=/var/log/mariadb.log' /etc/my.cnf.d/server.cnf

#Replace whole line when match found with sed
sed 's/.*six.*/fault/' file     # check all lines
#https://stackoverflow.com/questions/16440377/replace-whole-line-when-match-found-with-sed


