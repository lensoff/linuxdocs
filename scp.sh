scp root@10.53.42.5:/etc/zabbix/zabbix_server.conf /etc/zabbix/zabbix_server.conf
scp -r externalscripts root@zbx-node2:/usr/lib/zabbix

curl --insecure --user username:password -T /path/to/sourcefile sftp://desthost/path/
curl --insecure --user root:1111111 -T /usr/lib/zabbix/externalscripts/check_emc_clariion.pl sftp://10.200.154.111/usr/lib/zabbix/externalscripts/
curl --insecure --user root:1111111 sftp://zbx-node1/etc/zabbix/web/zabbix.conf.php -o zbx/zabbix.conf.php

curl -v #- verbose mode
