
#
#  15 USER PLUGIN SETTINGS
#

user_plugin = ldap
# configuration file of the user plugin, examples can be found in /usr/share/doc/kopano/example-config
user_plugin_config = /etc/kopano/ldap.cfg
# Authentication can be through plugin (default, recommended), pam or kerberos
auth_method = plugin
# If auth_method is set to pam, you should provide the pam service name
#pam_service = system-auth
