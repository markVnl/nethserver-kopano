
#
# 90 DAEMON and LOG SETTINGS
#

# DAEMON SETTINGS
run_as_user = kopano
run_as_group = kopano
# Please refer to the administrator manual or manpage why HTTP is used rather than the UNIX socket.
server_socket = http://localhost:236/


# LOG SETTINGS
log_method = file
log_file = /var/log/kopano/gateway.log
# Loglevel (0(none), 1(crit), 2(err), 3(warn), 4(notice), 5(info), 6(debug))
log_level = 6
log_timestamp = yes
coredump_enabled = no
