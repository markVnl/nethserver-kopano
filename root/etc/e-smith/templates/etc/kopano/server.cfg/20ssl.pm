
#
#  20 SSL SETTINGS
#

# TODO :
#  - FIX: SSL for kopano-server does not work with NSRV.crt, 
#         it is just single CA wihout (self)signed certificate
#         let's-encrypt wokrs!
#  - use db TLS-policy prop, see: 
# https://github.com/NethServer/nethserver-httpd-admin/commit/fecfa73e283fa1c93ba2bed5efd3c29e08c57498
#

server_ssl_key_file = /etc/pki/kopano/certs/kopano.pem
server_ssl_ca_file = /etc/pki/kopano/certs/kopano.crt
server_ssl_protocols = !SSLv2 !SSLv3 !TLSv1 !TLSv1.1 TLSv1.2
server_ssl_ciphers = EDH+aRSA+AES256:EECDH+aRSA+AES256:ECDHE-ECDSA-AES256-GCM-SHA384:+ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-ECDSA-AES128-GCM-SHA256:+ECDHE-ECDSA-AES256-SHA384:ECDHE-ECDSA-AES128-SHA256
server_ssl_prefer_server_ciphers = yes
