Hostname "{{ HOST_NAME | default(HOSTNAME) }}"
FQDNLookup false
Interval 10
Timeout 2
ReadThreads 10
WriteThreads 10
# Avoid memory issue if one of the write plugins is slow (e.g. graphite)
WriteQueueLimitHigh 250000
WriteQueueLimitLow 250000

LoadPlugin contextswitch
LoadPlugin cpu
LoadPlugin df
LoadPlugin interface
LoadPlugin load
LoadPlugin memory
LoadPlugin tcpconns
LoadPlugin uptime

<Plugin df>
        FSType "rootfs"
        IgnoreSelected true
        ReportByDevice false
        ReportInodes true
        ReportReserved true
</Plugin>

<Include "/etc/collectd/collectd.conf.d">
    Filter "*.conf"
</Include>
