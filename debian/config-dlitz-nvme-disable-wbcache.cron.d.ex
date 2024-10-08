#
# Regular cron jobs for the config-dlitz-nvme-disable-wbcache package.
#
0 4	* * *	root	[ -x /usr/bin/config-dlitz-nvme-disable-wbcache_maintenance ] && /usr/bin/config-dlitz-nvme-disable-wbcache_maintenance
