
#
# 90 DAEMON and LOG SETTINGS
#

# DAEMON SETTINS

server_listen_tls = *:237
# unencrypted on localhost for kopano-gateway
server_listen = localhost:236

run_as_user = kopano
run_as_group = kopano

# THREAD SETTINGS
threads = 8


# LOG SETTINGS
log_method = file
log_file		= /var/log/kopano/server.log
# Loglevel (0(none), 1(crit), 2(err), 3(warn), 4(notice), 5(info), 6(debug), 0x00020006(debug ldap) )
log_level = 6
coredump_enabled = no
